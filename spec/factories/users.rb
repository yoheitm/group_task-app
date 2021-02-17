FactoryBot.define do
  factory :user do
    name                   { Faker::Name.initials }
    email                  { Faker::Internet.free_email}
    password               { "1a" + Faker::Internet.password(min_length: 10) }
    password_confirmation  {password}
  end
end