class TwilioService
  def initialize
    @client = Twilio::REST::Client.new
  end

  def send_sms(phone_number, message)
    @client.messages.create(
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: phone_number,
      body: message
    )
  end
end