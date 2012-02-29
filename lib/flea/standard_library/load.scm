(define load
    (native_function "
        Proc.new do |arguments, interpreter|
            interpreter.run(File.read(arguments.first)) unless arguments.first.nil? || !File.exists?(arguments.first);
        end
    "))