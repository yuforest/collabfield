FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "text#{n}" }
    sequence(:email) { |n| "text#{n}@test.com" }
    password '123456'
    password_confirmation '123456'
  end
end
