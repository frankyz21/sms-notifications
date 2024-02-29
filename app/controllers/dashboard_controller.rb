class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @pagy, @sms_notifications = pagy(current_user.sms_notifications.order(created_at: :desc))
  end
end
