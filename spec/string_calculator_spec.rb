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
    it "returns sum of numbers in strings with any delimiter of any length given at the starting of string" do
      expect(StringCalculator.add("//de\n1de2de7")).to eq(10)
      expect(StringCalculator.add("//&@$\n1&@$2&@$7")).to eq(10)
    end

    it "raises an error when a single negative number is present" do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end

    it "raises an error with all negative numbers listed when multiple are present" do
      expect { StringCalculator.add("1,-2,-5,3") }.to raise_error("negative numbers not allowed -2,-5")
    end

  end
end
