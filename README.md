# Shell Script Bug: Empty and Whitespace File Handling

This repository demonstrates a common bug in shell scripts related to handling files that are empty or contain only whitespace characters. The script `bug.sh` attempts to process files in a directory; however, it lacks robust error handling for these edge cases, which can lead to unexpected behavior or script failure.

The solution, `bugSolution.sh`, provides a corrected version of the script that gracefully handles empty and whitespace-only files, preventing unexpected errors and ensuring more reliable operation.

## Bug Description
The original script (`bug.sh`) fails when it encounters an empty file or a file containing only whitespace. It does not correctly handle these situations, potentially causing the script to terminate unexpectedly or produce incorrect output.

## Solution
The corrected script (`bugSolution.sh`) incorporates enhanced error handling, using the `wc -l` command to check for empty or whitespace-only files and avoiding actions on them.

## Usage
Clone this repository and run the scripts using `bash bug.sh` and `bash bugSolution.sh`, observing the differences in behavior when processing problematic files.