# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :round do
    number { [*0..4].sample }
    game
  end
end
