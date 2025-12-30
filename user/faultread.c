#include <stdio.h>
#include <ulib.h>
#include <error.h>

int
main(void) {
    // lab8:2310675 自检：子进程解引用空指针应被内核杀死。
    int pid = fork();
    if (pid < 0) {
        panic("fork failed: %e.\n", pid);
    }
    if (pid == 0) {
        cprintf("I read %8x from 0.\n", *(volatile unsigned int *)0);
        panic("FAIL: T.T\n");
    }
    int code = 0;
    int ret = waitpid(pid, &code);
    if (ret != 0) {
        panic("waitpid failed: %e.\n", ret);
    }
    if (code == -E_KILLED) {
        cprintf("faultread pass.\n");
        return 0;
    }
    panic("FAIL: faultread expected killed, got %d.\n", code);
}
