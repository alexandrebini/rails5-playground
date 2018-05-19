FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraphs.join("\n") }

    trait :unpublished do
      published false
    end
  end
end
