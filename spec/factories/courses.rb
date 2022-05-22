FactoryBot.define do
    factory :course do
      title { Faker::Lorem.sentence }
      description { Faker::Lorem.paragraph }
      author { user }
    end
  end