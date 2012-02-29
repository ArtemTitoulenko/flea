(define require
  (native_function "
    Proc.new() do |arguments, interpreter|
      interpreter.run(File.open(arguments[0]+'.scm').read)
    end
  "))
