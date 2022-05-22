# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

30.times do
    User.create(email: Faker::Internet.email, password: '123456', password_confirmation: '123456')
end

15.times do 
    Course.create(title: Faker::Educator.course_name, description: Faker::Lorem.paragraph, author_id: rand(1..10))
end

10.times do
    course = Course.find(rand(1..5))
    talent = User.find(rand(1..10))
    if course.author_id != talent
        CourseEnrollement.create(course: course, talent: talent)
    end
end