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

  describe "#full_name" do
    it "concatenates first name and last name with spaces" do
      lukas = User.new(first_name: "Lukas", last_name: "Corbitt")

      expect(lukas.full_name).to eq("Lukas Corbitt")
    end
  end

  describe "#initials" do
    it "concatenates first initial and last initial with spaces" do
      lukas = User.new(first_name: "Lukas", last_name: "Corbitt")

      expect(lukas.initials).to eq("L. C.")
    end
  end
end
