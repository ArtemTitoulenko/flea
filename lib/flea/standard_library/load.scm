(define load
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.run(File.read(interpreter.evaluate(arguments[0]))) unless arguments.first.nil? || !File.exists?(arguments.first);
        end
    "))