module Api
    module V1
      class CourseEnrollementsController < JSONAPI::ResourceController
        skip_before_action :verify_authenticity_token
      end
    end
end