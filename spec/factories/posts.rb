FactoryBot.define do
  factory :post do
    user
    views { rand(1..50) }
    title { Faker::Book.title }
    body { Faker::Hipster.sentences.join(' ') }
  end
end
