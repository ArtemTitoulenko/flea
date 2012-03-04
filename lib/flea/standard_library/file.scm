(define file-exists?
    (native_function "
        Proc.new do |arguments, interpreter|
            File.exists?(interpreter.evaluate(arguments[0]))
        end
    "))
    
(define file-file?
    (native_function "
        Proc.new do |arguments, interpreter|
            File.file?(interpreter.evaluate(arguments[0]))
        end
    "))
    
(define file-join
    (native_function "
        Proc.new do |arguments, interpreter|
            File.join(interpreter.evaluate(arguments[0]).map {|x| interpreter.evaluate(x)})
        end
    "))
    
(define file-new
    (native_function "
        Proc.new do |arguments, interpreter|
            File.new(interpreter.evaluate(arguments[0]), interpreter.evaluate(arguments[1]))
        end
    "))

(define file-read
    (native_function "Proc.new {|arguments, interpreter| File.read(interpreter.evaluate(arguments[0])) || '' }"))
    
(define file-write
    (native_function "Proc.new {|arguments, interpreter| File.write(interpreter.evaluate(arguments[0]), interpreter.evaluate(arguments[1])) }"))