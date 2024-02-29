require 'rails_helper'

RSpec.describe TwilioSmsService, type: :service do
  describe '#deliver' do
    it 'sends an SMS successfully' do
      phone_number = '+923314230885'
      message = 'Test message'

      allow_any_instance_of(Twilio::REST::Client).to receive_message_chain(:messages, :create).and_return(true)

      expect(TwilioSmsService.new.deliver(phone_number, message)).to be_truthy
    end

    it 'returns false on failure' do
      phone_number = '+1234567890'
      message = 'Test message'
      
      error_message = 'Unable to send message'
      allow_any_instance_of(Twilio::REST::Client).to receive_message_chain(:messages, :create).and_return(error_message)
    
      expect(TwilioSmsService.new.deliver(phone_number, message)).to eq(error_message)
    end
  end
end
