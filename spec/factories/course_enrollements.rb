FactoryBot.define do
    factory :course_enrollement do
      course { course }
      talent { user }
    end
  end