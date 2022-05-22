class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :courses, foreign_key: :author_id, dependent: :destroy
  has_many :course_enrollements, foreign_key: :talent_id, dependent: :destroy

  def delete_after_check_courses(transfer_to=nil)
    if transfer_to.present? && User.find(transfer_to).present?
      if self.courses.any?
        self.courses.update(author_id: transfer_to)
      end
      self.destroy
    end
  end
end