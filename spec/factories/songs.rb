FactoryGirl.define do
  factory :song do
    name              { Faker::Lorem.sentence(1) }
    album             { Faker::Lorem.sentence(1) }
    year              29999999
    bedroom_count     2
    bathroom_count    3
    lyrics            { Faker::Lorem.sentence(4) }
    artist            { build(:artist) }

    end
end
