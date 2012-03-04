(define dir-pwd
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.pwd
        end
    "))
    
(define dir-chdir
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.chdir(interpreter.evaluate(arguments[0]) || '.')
        end
    "))
    
(define dir-entries
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.entries(interpreter.evaluate(arguments[0]) || '.')
        end
    "))

(define dir-mkdir
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.mkdir(interpreter.evaluate(arguments[0]), interpreter.evaluate(arguments[1]))
        end
    "))
    
(define dir-rmdir
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.rmdir(interpreter.evaluate(arguments[0]))
        end
    "))
