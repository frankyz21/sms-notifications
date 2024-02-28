class ApplicationController < ActionController::Base
  after_action :send_sms_on_sign_up, only: [:create] if controller_path.eql?("devise/regesteration")

  private

  def send_sms_on_sign_up
    TwilioService.new.send_sms(current_user.phone_number, "Welcome to our application! Thanks for signing up.")
  end
end
