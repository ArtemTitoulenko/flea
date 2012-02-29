(case "dogsayswoof"
  ("catsaysmeow"
    (display "meow"))
  ("catsayswoof"
    (display "meowwoof"))
  ("dogsayswoof"
    (display "woof"))
  ("lawyersaysyourargumentisinvalid"
    (display "boo")))

----

assert_output "woof"
