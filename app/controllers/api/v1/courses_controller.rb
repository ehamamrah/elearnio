module Api
    module V1
      class CoursesController < ApplicationController
    #     before_action :find_course, except: %i[index create search show]
    #     before_action :retrieve_courses_by_creation_date, only: %i[index search]
  
    #     def index
    #       courses = paginate(@courses)
    #       success_response(courses)
    #     end
  
    #     def show
    #       find_course
    #       success_response(@course)
    #     rescue ActiveRecord::RecordNotFound
    #       failure_response
    #     end
  
    #     def create
    #       course = course.new(course_params)
    #       course.save ? success_response(course) : failure_response
    #     end
  
    #     def update
    #       @course.update(course_params) ? success_response(@course) : failure_response
    #     end
  
    #     def destroy
    #       @course.destroy
    #       render json: { status: 'Success',
    #                      message: 'Removed course from our list' }
    #     end
  
    #     def search
    #       courses = paginate(@courses.filter(filtering_params))
    #       success_response(courses)
    #     end
  
    #     private
  
    #     def retrieve_courses_by_creation_date
    #       @courses = course.ordered_by_creation_date
    #     end
  
    #     def paginate(courses)
    #       courses.paginate(page: params[:page],
    #                        per_page: 10)
    #     end
  
    #     def find_real_course
    #       @course = course.find(params[:id])
    #     end
  
    #     def course_params
    #       params.fetch(:course, {})
    #             .permit(course_fields)
    #     end
  
    #     def filtering_params
    #       params.slice(:title, :author_id, :created_at)
    #     end
  
    #     def course_fields
    #       %i[title description author_id]
    #     end
  
    #     def success_response(course)
    #       render json: { status:  'Success',
    #                      message: 'Success Process',
    #                      data:    course }
    #     end
  
    #     def failure_response
    #       render json: { status:  'Failed',
    #                      message: 'Something Went Wrong' }
    #     end
      end
    end
end