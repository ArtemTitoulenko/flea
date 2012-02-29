(define file-exists?
    (native_function "
        Proc.new do |arguments, interpreter|
            File.exists?(arguments.first.to_s)
        end
    "))
    
(define file-file?
    (native_function "
        Proc.new do |arguments, interpreter|
            File.file?(arguments.first)
        end
    "))
    
(define file-join
    (native_function "
        Proc.new do |arguments, interpreter|
            File.join(arguments.map {|x| interpreter.evaluate(x)})
        end
    "))
    
(define file-new
    (native_function "
        Proc.new do |arguments, interpreter|
            File.new(arguments.first.to_s)
        end
    "))

(define file-read
    (native_function "Proc.new {|arguments, interpreter| File.read(arguments[0][1]) || '' }"))
    
(define file-write
    (native_function "Proc.new {|arguments, interpreter| File.write(arguments[0][1], arguments[0][2]) }"))