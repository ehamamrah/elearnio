require 'rails_helper'

RSpec.describe CourseEnrollement, type: :model do
  describe '#Validations' do
    it { is_expected.to validate_presence_of(:talent) }
    it { is_expected.to validate_presence_of(:course) }
  end

  describe '#Associations' do
    it { is_expected.to belong_to(:course) }
    it { is_expected.to belong_to(:talent) }
  end
end
