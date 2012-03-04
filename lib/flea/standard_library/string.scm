(define string
    (native_function "
        Proc.new do |arguments, interpreter|
            output = \"\"
            arguments.each {|x| output << interpreter.evaluate(x) }
            output
        end
    "))