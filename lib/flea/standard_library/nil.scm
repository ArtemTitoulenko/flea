(define nil?
    (native_function "
        Proc.new do |a,i| 
            i.evaluate(a[0]).nil?
        end"))