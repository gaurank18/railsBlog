FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { 'John' }
    last_name { 'Smith' }
    password { 'Password1' }
    password_confirmation { 'Password1' }
  end
end
