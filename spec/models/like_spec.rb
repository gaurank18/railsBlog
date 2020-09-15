require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:like) { create :like }

  context 'validations' do
    it 'has a valid factory' do
      expect(like).to be_valid
    end

    it "is not valid without a user" do
      like.user = nil
      expect(like).to_not be_valid
    end

    it "is not valid without a likeable association" do
      like.likeable = nil
      expect(like).to_not be_valid
    end
  end
end

