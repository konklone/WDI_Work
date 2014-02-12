FactoryGirl.define do
  factory :district do
    number { [*1..12].sample }

    factory :capitol do
      number 0
    end
  end
end