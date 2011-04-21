(if (equal? #t #t)
  (then
    (display "true"))
  (else
    (display "false")))
  
----

assert_output "true"
