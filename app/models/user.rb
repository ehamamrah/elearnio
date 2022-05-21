class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :courses, foreign_key: :author_id, dependent: :destroy
  has_many :course_enrollements, foreign_key: :talent_id, dependent: :destroy
end