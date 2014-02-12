require 'spec_helper'
require_relative '../lib/calc'

describe Calculator do

  describe "#add" do
    it "adds two positive numbers" do
      expect(Calculator.new.add(2, 2)).to eq(4)
    end

    it "adds a negative and positive number" do
      expect(Calculator.new.add(-1, 2)).to eq(1)
    end
  end

  describe "#subtract" do
    it "subtracts numbers" do
      expect(Calculator.new.subtract(11, 7)).to eq(4)
    end
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      expect(Calculator.new.sum([])).to eq(0)
    end

    it "computes the sum of an array of one number" do
      expect(Calculator.new.sum([1])).to eq(1)
    end
    it "computes the sum of an array of two numbers" do
      expect(Calculator.new.sum([1,2])).to eq(3)
    end
    it "computes the sum of an array of many numbers" do
      expect(Calculator.new.sum([1,2,3,4,5])).to eq(15)
    end
  end

# Once the above tests pass, fill in the tests and code for the following:

  describe "#multiply" do
    it "multiplies two numbers" do
      expect(Calculator.new.multiply(2, 2)).to eq(4)
    end
    it "multiplies several numbers" do 
      expect(Calculator.new.multiply(2, 2, 2)).to eq(8)
    end

  end

  describe "#power" do
    it "raises one number to the power of another number" do 
      expect(Calculator.new.power(2, 4)).to eq(16)
    end
  end

  # You can do this either using a loop or recursively
  describe "#factorial" do
    subject(:calculator) { Calculator.new }
    it "computes the factorial of 0" do
      expect(calculator.factorial(0)).to eq(1)
    end
    it "computes the factorial of 1" do 
      expect(calculator.factorial(0)).to eq(1)
    end
    it "computes the factorial of 2" do
      expect(calculator.factorial(2)).to eq(2)
    end
    it "computes the factorial of 5" do
      expect(calculator.factorial(5)).to eq(120)
    end
    it "computes the factorial of 10" do
      expect(calculator.factorial(10)).to eq(3628800)
    end
  end

end