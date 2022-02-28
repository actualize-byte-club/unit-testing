# The task is simple: Print integers 1 to N, but print “Fizz” if an integer is divisible by 3, “Buzz” if an integer is divisible by 5, and “FizzBuzz” if an integer is divisible by both 3 and 5.

require 'rspec'

class FizzBuzz
  def output(num)
    return "FizzBuzz" if num % 15 == 0
    return "Fizz" if num % 3 == 0
    return "Buzz" if num % 5 == 0
    return num
  end

  def run
    (1..100).each do |num|
      puts output(num)
    end
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = FizzBuzz.new
      expect(fb.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
      fb = FizzBuzz.new
      expect(fb.output(2)).to eq(2)
    end
    it 'should return Fizz if given 3' do
      fb = FizzBuzz.new
      expect(fb.output(3)).to eq('Fizz')
    end
    it 'should return Buzz if given 5' do
      fb = FizzBuzz.new
      expect(fb.output(5)).to eq('Buzz')
    end
    it 'should return Fizz if given 6' do
      fb = FizzBuzz.new
      expect(fb.output(6)).to eq('Fizz')
    end
    it 'should return Buzz if given 10' do
      fb = FizzBuzz.new
      expect(fb.output(10)).to eq('Buzz')
    end
    it 'should return FizzBuzz if given 15' do
      fb = FizzBuzz.new
      expect(fb.output(15)).to eq('FizzBuzz')
    end
  end
end

fb = FizzBuzz.new
fb.run