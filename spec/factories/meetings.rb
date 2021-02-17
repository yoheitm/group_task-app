FactoryBot.define do
  factory :meeting do
    title {Faker::Lorem.sentence}
    start_time {Faker::Date.backward}
    content {Faker::Lorem.sentence}
    association :group
  end
end