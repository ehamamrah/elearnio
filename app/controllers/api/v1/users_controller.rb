module Api
    module V1
      class UsersController < JSONAPI::ResourceController
        skip_before_action :verify_authenticity_token

        def destroy
          @user = User.find(params[:id])
          transfer_to = params[:transfer_to]
          if transfer_to
            transfer_to_user = User.find(transfer_to)
            if transfer_to_user.present? && transfer_to_user.id != @user.id
              @user.delete_after_check_courses(transfer_to)
            else
              handle_json_error
            end
          else
            if !@user.courses.any?
              @user.destroy
            else
              handle_json_error
            end
          end
        end

        private

        def handle_json_error
          render json: {
            'error': 'Add correct transfer_to parameter',
            'message': "You can't delete user without transfering user courses to another author"
          }
        end
      end
    end
end