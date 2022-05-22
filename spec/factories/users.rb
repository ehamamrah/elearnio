FactoryBot.define do
    factory :user do
      password = Faker::Internet.password
      email    { Faker::Internet.safe_email }
      password { password }
      password_confirmation { password }
    end
  end