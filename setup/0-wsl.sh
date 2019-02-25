# for multiple processes
# https://github.com/Microsoft/WSL/issues/3397
echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
