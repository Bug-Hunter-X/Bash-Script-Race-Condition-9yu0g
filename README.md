# Bash Script Race Condition
This repository demonstrates a common race condition in bash scripting where a file is created, written to, and then immediately read.  The lack of proper synchronization can lead to the read operation completing before the write operation is finished, resulting in the file being empty or containing unexpected data.

The `bug.sh` script showcases the race condition.  The `bugSolution.sh` script demonstrates a solution using proper synchronization mechanisms to avoid the issue.

This example highlights the importance of careful file I/O operations in shell scripts, particularly when dealing with multiple processes or operations that could occur concurrently.