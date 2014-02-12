# 2. A user is charged for the room. (Hourly rate of a room * number of hours).
#  - This will require an extra model/table -> Account. It should have a balance.
#  - A user cannot rent a room without enough money in their balance to pay for it.

require 'spec_helper'

describe Room do
  let(:room) do
    Room.new(name: "room 1", hourly_rate: 50)
  end

  it "is valid if it haz all the attributes" do
    expect(room).to be_valid
  end 

  it "is invalid without a name" do
    room.name = nil
    expect(room).to have(1).errors_on("name")
  end

  it "is invalid without an hourly_rate" do
    room.hourly_rate = nil
    expect(room).to have(1).errors_on("user_id")
  end

end
