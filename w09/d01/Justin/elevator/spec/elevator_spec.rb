# ### Pair Activity

# On one computer. Trade back and forth.

# Elevators, Floors, and (probably) a Dispatcher
# - 10 floors
# - A floor can call an elevator to go up or down
# - The top floor can only call for down
# - The bottom floor can only call for up
# - An elevator is either heading up or down
# - People can call specific floors within the elevator
# - if an elevator is heading up, it only stops at floors either called internally or on floors calling in the direction the elevator is going (on the way)
#   - example, the elevator is on floor two heading up. internally floors 4 and 6 are pressed. Floor 8 has requested down and Floor 9 has requested up. We hit 4, 6, and 9. And then we head down hitting floor 8.
# - If there are no requests for the elevator, then it is neither heading up nor down. It will go to the next floor that calls it in either direction.

# **UPDATE**

# Forget about the floors calling for the elevator.
# The elevator can only be called internally. It still heads in just 1 direction, and ignores calls to floors not on it's way. But start first with just the internal calls

require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do
	let(:ele) { Elevator.new("elelator goes down the hole", 10)}

	describe '::new' do
		it 'creates a new Elevator!!!' do
			expect(ele).to_not eq nil
		end

		it 'has a floor yo' do
			expect(ele.floors.count).to_not eq(0)
		end

		it 'has 10 floors' do
			expect(ele.floors.count).to eq(10)
		end

		it 'starts at 1st floor' do
			expect(ele.current_floor).to eq(1)
		end
	end

	describe '#call' do
		it "can call a floor" do
			ele.call(5)
			expect(ele.call(5)).to_not eq (false)
		end

		it "cannot call go down if at bottom floor" do
			expect(ele.call(ele.floors[0]-1)).to eq(false)
		end

		it "cannot call up if on the top floor" do
			expect(ele.call(ele.floors.length+1)).to eq(false)
		end

		it "sets the floor when successfully called" do
			ele.call(5)
			expect(ele.current_floor).to eq(5)
		end

		it "sets the direction to go towards called floor" do
			ele.call(5)
			expect(ele.direction).to eq("up")
		end
	end

	describe '#direction' do
		it "is able to go up or down" do
			expect(ele.direction).to eq("up" || "down")
		end
		it "can can only go down if on the top" do
			ele.call(10)
			expect(ele.direction).to eq("down")
		end
	end

	# describe '#call_from_floor' do
	# 	it "can call from a specific floor, and go to another"
	# end

	# describe '#current_floor' do
	# 	it ""
	# end


	
end