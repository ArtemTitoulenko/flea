(define string
    (native_function "
        Proc.new do |arguments, interpreter|
            output = \"\"
            interpreter.evaluate(arguments[0]).each {|x| output << interpreter.evaluate(x) }
            output
        end
    "))