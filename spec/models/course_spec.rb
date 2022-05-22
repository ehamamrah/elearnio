require 'rails_helper'

RSpec.describe Course, type: :model do
  describe '#Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe '#Associations' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:course_enrollements).dependent(:destroy) }
  end
end
