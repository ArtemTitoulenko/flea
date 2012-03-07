(define mapcar 
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.evaluate(arguments[1]).map{ |x| interpreter.evaluate(arguments[0]).call([interpreter.evaluate(x)], interpreter)}
        end
    "))