class Course < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :course_enrollements, foreign_key: :course_id, dependent: :destroy

  validates_presence_of :title, :description, :author_id

  scope :ordered_by_creation_date, -> { order('created_at DESC') }

  def self.filter(filtering_params)
    data = where(nil)
    filtering_params.each do |key, value|
      data = data.send(key, value) if value.present?
    end
    data
  end
end
