class SmsNotification < ApplicationRecord
  after_create :send_sms

  private

  def send_sms
    response = TwilioService.new.send_sms(self.recipient_phone_number, self.message)
    response.include?("error") ? error = response : error = response.error_code
    self.update(status: error.nil? ? "sent" : "failed", error_message: error)
  end
end
