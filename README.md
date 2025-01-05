# Tcl File Reading Error Handling
This repository demonstrates a common error in Tcl file reading and provides a solution.

## The Problem
The `read_file` procedure uses the return value to indicate both success (file content) and failure (-1).  However, an empty file will also return an empty string, leading to ambiguity.

## The Solution
The improved solution uses a more robust error-handling mechanism with explicit error reporting and checking for the file's existence.