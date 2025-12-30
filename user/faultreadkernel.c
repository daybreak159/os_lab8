#include <stdio.h>
#include <ulib.h>
#include <error.h>

int
main(void) {
    // lab8:2310675 自检：子进程读取内核/非法虚拟地址应被内核杀死。
    int pid = fork();
    if (pid < 0) {
        panic("fork failed: %e.\n", pid);
    }
    if (pid == 0) {
        cprintf("I read %08x from 0xfac00000!\n", *(volatile unsigned *)0xfac00000);
        panic("FAIL: T.T\n");
    }
    int code = 0;
    int ret = waitpid(pid, &code);
    if (ret != 0) {
        panic("waitpid failed: %e.\n", ret);
    }
    if (code == -E_KILLED) {
        cprintf("faultreadkernel pass.\n");
        return 0;
    }
    panic("FAIL: faultreadkernel expected killed, got %d.\n", code);
}
