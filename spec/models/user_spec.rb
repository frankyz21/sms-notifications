# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires email presence' do
      user = User.new(email: nil, phone_number: '+1234567890')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'requires phone number presence' do
      user = User.new(email: 'test@example.com', phone_number: nil)
      expect(user).not_to be_valid
      expect(user.errors[:phone_number]).to include("can't be blank")
    end
    
    it 'validates the format of email' do
      user = User.new(email: 'invalid_email', phone_number: '+1234567890')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("is invalid")
    end

  end
end
