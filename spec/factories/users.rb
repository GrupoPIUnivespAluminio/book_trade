FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test@example#{n}.com" }
    password { 'password' } 
  end
end
