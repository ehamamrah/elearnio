class CourseEnrollement < ApplicationRecord
  belongs_to :course
  belongs_to :talent, class_name: 'User'

  before_create :check_enrollement_user

  validates_uniqueness_of :talent, scope: :course, message: 'Already enrolled in the course'

  private

  def check_enrollement_user
    if talent == course.author
      self.errors.add(:talent, 'You cannot enrol yourself')
      throw :abort
    end
  end
end