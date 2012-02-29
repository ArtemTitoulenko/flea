(define exit
    (native_function "
        Proc.new do |arguments, interpreter|
            exit(arguments[0].to_i || 0)
        end
    "))

(define quit exit)
