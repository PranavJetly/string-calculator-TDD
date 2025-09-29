require 'pry'

class StringCalculator
  def self.add(numbers)
    return 0 if numbers == ""
    numbers.gsub!("\n",",")
    chars = numbers.split(',')
    chars.reduce(0){|sum,ch| sum+ch.to_i}
  end
end
