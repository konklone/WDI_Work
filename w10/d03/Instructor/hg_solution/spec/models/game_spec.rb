require 'spec_helper'

describe Game do
  it { should have_many(:tributes) }
  it { should have_many(:rounds) }
end
