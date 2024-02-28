class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @sms_notifications = SmsNotification.all
  end
end
