class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)

    if !first_operand.is_a?(Numeric) || !second_operand.is_a?(Numeric)
      raise ArgumentError, "Both operands must be numbers"
    elsif !ALLOWED_OPERATIONS.include?(operation)
      raise ArgumentError, "Operation not supported"
    else
    end


    begin
      result = case operation
               when '+'
                 first_operand + second_operand
               when '/'
                 first_operand / second_operand
               when '*'
                 first_operand * second_operand
               end

      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end

