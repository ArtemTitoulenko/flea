(if (file-exists? "test-cases/11-file-manipulation/test.txt")
    (display "true")
    (display "false"))

----

assert_output "true"