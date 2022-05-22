module Api
    module V1
        class CourseEnrollementResource < JSONAPI::Resource
            attributes :course_id, :talent_id
            belongs_to :course
            belongs_to :talent, :foreign_key_on => :related, class_name: 'User'

            filters :course_id, :talent_id
        end
    end
end