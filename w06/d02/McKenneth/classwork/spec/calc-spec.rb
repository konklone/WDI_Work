
require_relative 'spec_helper'
require_relative '../lib/calc'

describe Calculator do
  subject(:calculatrice) {Calculator.new}

  describe "#add" do
    it "adds two positive numbers" do
      expect(calculatrice.add(2, 2)).to eq(4)
    end

    it "adds a negative and positive number" do
      expect(calculatrice.add(-1, 2)).to eq(1)
    end
  end

  describe "#subtract" do
    it "subtracts numbers" do
      expect(calculatrice.subtract(11, 7)).to eq(4)
    end
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      expect(calculatrice.sum([])).to eq(0)
    end

    it "computes the sum of an array of one number" do
      expect(calculatrice.sum([1])).to eq(1)
    end
    it "computes the sum of an array of two numbers" do
      expect(calculatrice.sum([1,2])).to eq(3)
    end
    it "computes the sum of an array of many numbers" do
      expect(calculatrice.sum([1,2,3,4])).to eq(10)
    end
  end

# Once the above tests pass, fill in the tests and code for the following:

  describe "#multiply" do

    it "multiplies two numbers" do
      expect(calculatrice.multiply(2,4)).to eq(8)
    end
    it "multiplies several numbers" do
      expect(calculatrice.multiply(2,3,4)).to eq(24)
    end

  end

  describe "#power" do
    it "raises one number to the power of another number" do
      expect(calculatrice.power(4,3)).to eq(64)
    end
  end

  # You can do this either using a loop or recursively
  describe "#factorial" do
    it "computes the factorial of 0" do 
      expect(calculatrice.factorial(0)).to eq(1)
    end
    it "computes the factorial of 1" do
      expect(calculatrice.factorial(1)).to eq(1)
    end
    it "computes the factorial of 2" do
      expect(calculatrice.factorial(2)).to eq(2)
    end

    it "computes the factorial of 5" do
      expect(calculatrice.factorial(5)).to eq(120)
    end
    it "computes the factorial of 10" do
      expect(calculatrice.factorial(10)).to eq(3628800)
    end
  end

end