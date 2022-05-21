class CourseResource < JSONAPI::Resource
    attributes :title, :description, :author_id
    # has_many :course_enrollements, foreign_key: :course_id, dependent: :destroy
end