(define hash-new 
    (native_function "
        Proc.new do |arguments, interpreter|
            Hash.new
        end
    "))

(define hash-set
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.evaluate(arguments[0])[interpreter.evaluate(arguments[1])] = interpreter.evaluate(arguments[2])
        end
    "))

(define hash-get
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.evaluate(arguments[0])[interpreter.evaluate(arguments[1])]
        end
    "))