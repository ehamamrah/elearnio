RSpec.describe User, type: :model do
  let(:user)      { create(:user) }

  describe '#Validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:password_confirmation) }
  end

  describe '#Associations' do
    it { is_expected.to have_many(:courses).dependent(:destroy) }
    it { is_expected.to have_many(:course_enrollements).dependent(:destroy) }
  end
  
  describe '#Destroy' do
    it 'Will not allow user delete if user has courses as author without trasferring courses to another user' do
      create(:course, author: user)
      user.destroy
      expect(User.count).to eq(1)
    end
  end
end