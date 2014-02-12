require 'spec_helper'
require_relative '../lib/calc'

describe Calculator do
  calc = Calculator.new

  describe "#add" do
    it "adds two positive numbers" do
      expect(calc.add(2, 2)).to eq(4)
    end

    it "adds a negative and positive number" do
      expect(calc.add(-1, 2)).to eq(1)
    end
  end

  describe "#subtract" do
    it "subtracts numbers" do
      expect(calc.subtract(11, 7)).to eq(4)
    end
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      expect(calc.sum([])).to eq(0)
    end

    it "computes the sum of an array of one number" do
      expect(calc.sum([6])).to eq(6)
    end

    it "computes the sum of an array of two numbers" do
      expect(calc.sum([4, 7])).to eq(11)
    end

    it "computes the sum of an array of many numbers" do
      expect(calc.sum([4, 7, -3])).to eq(8)
    end
  end

# Once the above tests pass, fill in the tests and code for the following:

  describe "#multiply" do

    context "when less that 2 numbers passed" do
      it "doesn't try to multiply" do
        expect(calc).to receive(:multiply).with(1).and_return("please enter at least two numbers.")
        calc.multiply(1)
      end
    end

    context "when at least two numbers are passed" do
      it "multiplies two numbers" do
        expect(calc.multiply(4, 6)).to eq(24)
      end

      it "multiplies several numbers" do
        expect(calc.multiply(2, 6, 3)).to eq(36)
      end
    end

  end

  describe "#power" do
    context "when exponent is 0" do
      it "returns 1" do
        expect(calc.power(2, 0)).to eq(1)
      end
    end

    context "when exponent is greater than 0" do
      it "raises one number to the power of another number" do
        expect(calc.power(3, 3)).to eq(27)
      end
    end
  end

  # You can do this either using a loop or recursively
  describe "#factorial" do
    it "computes the factorial of 0" do
      expect(calc.factorial(0)).to eq(1)
    end

    it "computes the factorial of 1" do
      expect(calc.factorial(1)).to eq(1)
    end

    it "computes the factorial of 2" do
      expect(calc.factorial(2)).to eq(2)
    end

    it "computes the factorial of 5" do
      expect(calc.factorial(5)).to eq(120)
    end

    it "computes the factorial of 10" do
      expect(calc.factorial(10)).to eq(3_628_800)
    end
  end

end