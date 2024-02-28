class ApplicationController < ActionController::Base
  after_action :send_sms_on_sign_up, only: [:create], if: :devise_controller?
  private

  def send_sms_on_sign_up
    if controller_path.eql?("users/registrations")
      response = TwilioService.new.send_sms(current_user.phone_number, "Welcome to our application! Thanks for signing up.")
      SmsNotification.create(recipient_phone_number: response.to, message: response.body, status: response.status, error_message: response.error_code )
    end
  end
end
