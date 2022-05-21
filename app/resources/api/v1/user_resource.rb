module Api
    module V1
        class UserResource < JSONAPI::Resource
            attributes :email, :password
            model_name 'User'
            has_many :course, foreign_key: :author_id, dependent: :destroy
        end
    end
end