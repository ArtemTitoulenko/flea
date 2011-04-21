(define if 
  (native_function "
    Proc.new() do |arguments, interpreter|
      if(interpreter.evaluate(arguments[0]))
        interpreter.evaluate(arguments[1])
      else
        interpreter.evaluate(arguments[2]) unless(arguments[2].nil?)
      end
    end
  "))
  
(define then
  (native_function "
    Proc.new() do |arguments, interpreter|
      val = nil
      arguments.each do |i|
        val = interpreter.evaluate(i)
      end
    end
"))

(define else
  (native_function "
    Proc.new() do |arguments, interpreter|
      val = nil
      arguments.each do |i|
        val = interpreter.evaluate(i)
      end
    end
"))
