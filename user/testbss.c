#include <stdio.h>
#include <ulib.h>
#include <error.h>

#define ARRAYSIZE (1024*1024)

uint32_t bigarray[ARRAYSIZE];

int
main(void) {
    cprintf("Making sure bss works right...\n");
    int i;
    for (i = 0; i < ARRAYSIZE; i ++) {
        if (bigarray[i] != 0) {
            panic("bigarray[%d] isn't cleared!\n", i);
        }
    }

    // lab8:2310675 自检：子进程越界写应触发页故障并被内核杀死，避免在 sh 中显示 error: -9。
    int pid = fork();
    if (pid < 0) {
        panic("fork failed: %e.\n", pid);
    }
    if (pid == 0) {
        cprintf("Yes, good.  Now doing a wild write off the end...\n");
        bigarray[ARRAYSIZE + 1024] = 0;
        panic("FAIL: T.T\n");
    }
    int code = 0;
    int ret = waitpid(pid, &code);
    if (ret != 0) {
        panic("waitpid failed: %e.\n", ret);
    }
    if (code != -E_KILLED) {
        panic("FAIL: expected killed, got %d.\n", code);
    }

    // lab8:2310675 继续验证 bss 区域可读写且能保持写入的值。
    for (i = 0; i < ARRAYSIZE; i ++) {
        bigarray[i] = i;
    }
    for (i = 0; i < ARRAYSIZE; i ++) {
        if (bigarray[i] != i) {
            panic("bigarray[%d] didn't hold its value!\n", i);
        }
    }
    cprintf("testbss pass.\n");
    return 0;
}
