class TwilioSmsService
  def initialize
    @client = Twilio::REST::Client.new
  end

  def deliver(phone_number, message)
    begin
      response = @client.messages.create(
        from: ENV['TWILIO_PHONE_NUMBER'],
        to: phone_number,
        body: message
      )
      {status: 200, response: "Message sent successfully"}
    rescue Twilio::REST::RestError => e  
      {status: e.status_code, response: e.error_message}
    end    
  end
end