(define select
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.evaluate(arguments[0]).select {|x| interpreter.evaluate(arguments[1]).call(interpreter.evaluate(x), interpreter)}
        end
    "))