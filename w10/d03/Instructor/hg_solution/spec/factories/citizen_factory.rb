FactoryGirl.define do
  factory :citizen do
    name { Faker::Name.name }
    birth_year 1988
    district
    gender { ["m", "f"].sample }

    factory :teen do
      birth_year { [*18.years.ago.year..12.years.ago.year].sample }

      factory :tribute, class: Tribute do
        game
      end
    end

    factory :sponsor, :class => Sponsor do
      association :district, factory: :capitol
    end

    factory :escort, :class => Escort
  end
end