require_relative '../solver'

RSpec.describe Solver do
  let(:solver_obj) { Solver.new }

  describe '#factorial' do
    it 'returns 1 when n equal 0' do
      expect(solver_obj.factorial(0)).to eq(1)
    end

    it 'returns the correct value for factorial of a given number' do
      expect(solver_obj.factorial(3)).to eq(6)
    end

    it 'raise an exception when n is negative' do
      expect(solver_obj.factorial(-2)).to match('No negative number')
    end
  end

  describe '#reverse method' do
    it 'returns the reversed word' do
      expect(solver_obj.reverse('hello')).to eq('olleh')
    end

    it 'returns empty string when word is empty' do
      expect(solver_obj.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns fizz if n is divisible by 3' do
      expect(solver_obj.fizzbuzz(3)).to eq('fizz')
      expect(solver_obj.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns buzz if n is divisible by 5' do
      expect(solver_obj.fizzbuzz(5)).to eq('buzz')
    end

    it 'returns fizzbuzz if number is divisible by 3 and 5' do
      expect(solver_obj.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver_obj.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'return the same number if number is not divisible by 3 and 5' do
      expect(solver_obj.fizzbuzz(7)).to eq('7')
    end
  end
end
