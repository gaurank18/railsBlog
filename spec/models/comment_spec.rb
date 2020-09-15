require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { create :comment }

  context 'validations' do
    it 'has a valid factory' do
      expect(comment).to be_valid
    end

    it "is not valid without a user" do
      comment.user = nil
      expect(comment).to_not be_valid
    end

    it "is not valid without a post" do
      comment.post = nil
      expect(comment).to_not be_valid
    end

    it "is not valid without a body" do
      comment.body = nil
      expect(comment).to_not be_valid
    end
  end
end

