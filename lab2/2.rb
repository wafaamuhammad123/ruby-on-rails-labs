class MyMath
    def calc(num1, num2, operator)
        validate_number(num1)
        validate_number(num2)
        validate_operator(operator)
    
        case operator
        when "+"
          num1 + num2
        when "-"
          num1 - num2
        when "*"
          num1 * num2
        when "/"
          if num2 == 0
            raise "Division by zero is not allowed"
          end
          num1 / num2
        else
          raise "Not supported operator"
        end
      end
    
      private
    
      def validate_number(num)
        if !num.is_a?(Numeric)
          raise "Invalid number"
        end
      end
    
      def validate_operator(operator)
        if !["+", "-", "*", "/"].include?(operator)
          raise "Not supported operator"
        end
      end
    end
 
math = MyMath.new
result = math.calc(5, 3, "+")  # 8
result = math.calc(5, 3, "-")  # 2
result = math.calc(5, 3, "*")  # 15
result = math.calc(5, 0, "/")  # Division by zero is not allowed
result = math.calc(5, "abc", "+")  # Invalid number
result = math.calc(5, 3, "%")  
