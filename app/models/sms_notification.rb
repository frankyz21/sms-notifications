class SmsNotification < ApplicationRecord
  include PgSearch::Model

  after_create :send_sms

  pg_search_scope :search_by_content_and_status, against: [:recipient_phone_number, :status], using: { tsearch: { prefix: true } }

  private

  def send_sms
    response = TwilioSmsService.new.deliver(self.recipient_phone_number, self.message)
    self.update(status: response[:status].eql?(200) ? "sent" : "failed", error_message: "code: #{response[:status]}, message: #{response[:response]}")
  end
end