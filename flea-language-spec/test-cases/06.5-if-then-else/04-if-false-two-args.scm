(if (equal? #t #f)
  (then
    (display "true"))
  (else
    (display "false")))
  
----

assert_output "false"
