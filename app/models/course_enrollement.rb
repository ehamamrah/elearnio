class CourseEnrollement < ApplicationRecord
  belongs_to :course
  belongs_to :talent, class_name: 'User'
end