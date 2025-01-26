# Elixir Enum.each and Process.exit Bug

This repository demonstrates a potential issue when using `Process.exit` within an `Enum.each` loop in Elixir.  The problem arises because `Process.exit` terminates the current process, potentially preventing the `Enum.each` from processing all elements in the list.

The `bug.exs` file shows the problematic code, while `bugSolution.exs` provides a corrected version.

## Bug
The original code uses `Process.exit` within the `Enum.each` callback to terminate the process if a specific element is encountered.  However, this terminates the process prematurely, and `Enum.each` might not complete, leading to incomplete processing of the list.

## Solution
The solution involves handling termination more gracefully, either by using a different approach to process interruption or by ensuring all elements are processed before terminating the process.