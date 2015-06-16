require 'faker'
FactoryGirl.define do
  factory :login do
    supplier nil
    logged_in_at { DateTime.now - (rand(1..10).days) }
  end
end
