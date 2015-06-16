require 'faker'

FactoryGirl.define do
  factory :supplier do
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
