require 'pry'

class StringCalculator
  def self.add(numbers)
    return 0 if numbers == ""
    removeline = ","
    delimiter = ","
    if numbers.start_with?("//")
      # split first line and rest
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = delimiter_line[2..-1]
      removeline = "" #make removeline empty if string starts with '//''
    end
    numbers.gsub!("\n", removeline)
    chars = numbers.split(delimiter)
    negatives = chars.select { |ch| ch.to_i < 0 }
    raise "negative numbers not allowed #{negatives.join(",")}" unless negatives.empty?  
    chars.reduce(0){|sum,ch| sum+ch.to_i}
  end
end
