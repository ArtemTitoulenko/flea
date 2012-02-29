(if (file-exists? "does.not.exist")
    (display "true")
    (display "false"))
    
----

assert_output "false"