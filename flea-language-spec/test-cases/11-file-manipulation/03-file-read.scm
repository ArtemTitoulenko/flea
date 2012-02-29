(file-read (file-new "test-cases/11-file-manipulation/test.txt"))

----

assert_output "Hello"
assert_execution_success