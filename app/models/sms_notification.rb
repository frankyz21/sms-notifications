class SmsNotification < ApplicationRecord
  after_create :send_sms

  private

  def send_sms
    response = TwilioSmsService.new.deliver(self.recipient_phone_number, self.message)
    self.update(status: response[:status].eql?(200) ? "sent" : "failed", error_message: "code: #{response[:status]}, message: #{response[:response]}")
  end
end
