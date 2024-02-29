class TwilioService
  def initialize
    @client = Twilio::REST::Client.new
  end

  def send_sms(phone_number, message)
    begin
      @client.messages.create(
        from: ENV['TWILIO_PHONE_NUMBER'],
        to: phone_number,
        body: message
      )
    rescue Twilio::REST::RestError => e
      return e.inspect
    end    
  end
end