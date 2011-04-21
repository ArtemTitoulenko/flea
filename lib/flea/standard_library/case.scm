(define case
  (native_function "
    Proc.new() do |arguments, interpreter|
      thing = interpreter.evaluate(arguments[0])
      cases = arguments.slice(1, arguments.length)
      
      cases.each do |this_case|
        condition = this_case[0]
        statements = this_case.slice(1, this_case.length)
        if condition == thing or condition == 'default'
          statements.each do |line|
              interpreter.evaluate(line)
          end
        end
      end
    end
  "))
