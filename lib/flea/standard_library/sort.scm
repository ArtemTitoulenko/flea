(define sort 
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.evaluate(arguments[0]).sort
        end
    "))