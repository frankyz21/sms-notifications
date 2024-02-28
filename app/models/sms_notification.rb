class SmsNotification < ApplicationRecord
  after_create :send_sms

  private

  def send_sms
    response = TwilioService.new.send_sms(self.recipient_phone_number, self.message)
    self.update(status: response.status, error_message: response.error_code)
  end
end
