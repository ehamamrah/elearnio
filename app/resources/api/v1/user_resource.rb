module Api
    module V1
        class UserResource < JSONAPI::Resource
            attributes :email, :password, :password_confirmation
            model_name 'User'
            has_many :courses, foreign_key: :author_id, dependent: :destroy
            has_many :course_enrollements, foreign_key: :talent_id, dependent: :destroy
        end
    end
end