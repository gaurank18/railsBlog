FactoryBot.define do
  factory :comment do
    user
    post
    body { Faker::Hipster.sentences.join(' ') }
  end
end
