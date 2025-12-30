#include <ulib.h>
#include <stdio.h>
#include <string.h>

#define DEPTH 3

void forktree(const char *cur);

static int
forkchild(const char *cur, char branch) {
    char nxt[DEPTH + 1];

    if (strlen(cur) >= DEPTH)
        return -1;

    snprintf(nxt, DEPTH + 1, "%s%c", cur, branch);
    int pid = fork();
    if (pid == 0) {
        forktree(nxt);
        yield();
        exit(0);
    }
    return pid;
}

void
forktree(const char *cur) {
    cprintf("%04x: I am '%s'\n", getpid(), cur);

    // lab8:2310675 等待当前节点创建的子进程退出，避免父进程提前退出导致输出与 shell 提示符混在一起。
    int pid0 = forkchild(cur, '0');
    int pid1 = forkchild(cur, '1');
    if (pid0 > 0) {
        waitpid(pid0, NULL);
    }
    if (pid1 > 0) {
        waitpid(pid1, NULL);
    }
}

int
main(void) {
    forktree("");
    return 0;
}
