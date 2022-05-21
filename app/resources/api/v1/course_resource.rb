module Api
    module V1
        class CourseResource < JSONAPI::Resource
            attributes :title, :description, :author_id
            belongs_to :author, :foreign_key_on => :related, class_name: 'User'
            # has_many :course_enrollements, foreign_key: :course_id, dependent: :destroy
        end
    end
end