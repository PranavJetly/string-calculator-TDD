require 'pry'

class StringCalculator
  def self.add(numbers)
    return 0 if numbers == ""
    delimeter = numbers.start_with?("//") ? numbers[2] : ","
    removeline = numbers.start_with?("//") ? "" : ","
    numbers.gsub!("\n", removeline)
    chars = numbers.split(delimeter)
    chars.reduce(0){|sum,ch| sum+ch.to_i}
  end
end
