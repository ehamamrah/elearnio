Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :courses do
        jsonapi_resources :course_enrollements, only: %i[index show]
      end

      jsonapi_resources :course_enrollements, only: %i[create update destroy]
      jsonapi_resources :users
    end
  end
end