#include <stdio.h>
#include <ulib.h>
#include <error.h>

/* try to load the kernel's TSS selector into the DS register */

int
main(void) {
    // lab8:2310675 RISC-V 没有 x86 风格的分段机制；这里改用 fork+wait 的自检方式。
    // 子进程触发指令页故障，父进程验证其被内核杀死。
    int pid = fork();
    if (pid < 0) {
        panic("fork failed: %e.\n", pid);
    }
    if (pid == 0) {
        // lab8:2310675 跳转到未映射的地址 0，触发 Instruction page fault。
        ((void (*)(void))0)();
        panic("FAIL: T.T\n");
    }
    int code = 0;
    int ret = waitpid(pid, &code);
    if (ret != 0) {
        panic("waitpid failed: %e.\n", ret);
    }
    if (code == -E_KILLED) {
        cprintf("badsegment pass.\n");
        return 0;
    }
    panic("FAIL: badsegment expected killed, got %d.\n", code);
}
