require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number for string' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns summation of two strings' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end
  end
end
