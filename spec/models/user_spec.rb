require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }

  context 'validations' do
    it 'has a valid factory' do
      expect(user).to be_valid
    end

    it "is not valid without a first_name" do
      user.first_name = nil
      expect(user).to_not be_valid
    end

    it "is not valid without a last_name" do
      user.last_name = nil
      expect(user).to_not be_valid
    end

    it "is not valid without an email" do
      user.email = nil
      expect(user).to_not be_valid
    end
  end
end
