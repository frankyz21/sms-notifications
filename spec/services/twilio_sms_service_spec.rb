require 'rails_helper'

RSpec.describe TwilioSmsService, type: :service do
  describe '#deliver' do
    it 'sends an SMS successfully' do
      phone_number = '+923314230885'
      message = 'Test message'

      allow_any_instance_of(Twilio::REST::Client).to receive_message_chain(:messages, :create).and_return(true)
      response = {:response=>"Message sent successfully", :status=>200}
      expect(TwilioSmsService.new.deliver(phone_number, message)).to eq(response)
    end
  end
end
