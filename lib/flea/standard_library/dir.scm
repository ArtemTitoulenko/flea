(define dir-pwd
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.pwd
        end
    "))
    
(define dir-chdir
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.chdir(arguments[0] || '.')
        end
    "))
    
(define dir-entries
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.entries(arguments[0] || '.')
        end
    "))

(define dir-mkdir
    (native_function "
        Proc.new do |arguments, interpreter|
            arguments[1].nil? ? Dir.mkdir(arguments[0]) : Dir.mkdir(arguments[0], arguments[1])
        end
    "))
    
(define dir-rmdir
    (native_function "
        Proc.new do |arguments, interpreter|
            Dir.rmdir(arguments[0])
        end
    "))
