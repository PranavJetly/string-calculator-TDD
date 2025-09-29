require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns number for string" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns summation of two strings" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "returns sum of multiple numbers in strings" do
      expect(StringCalculator.add("1,5,5")).to eq(11)
    end

    it "returns sum of numbers in strings with '\n'" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "returns sum of numbers in strings with any delimiter given at the starting of string" do
      expect(StringCalculator.add("//;\n1;2;7")).to eq(10)
      expect(StringCalculator.add("//&\n1&2&7")).to eq(10)
    end
  end
end
