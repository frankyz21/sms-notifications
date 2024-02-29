class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:query].present?
      @pagy, @sms_notifications = pagy(current_user.sms_notifications.search_by_content_and_status(params[:query]).order(created_at: :desc))
    else
      @pagy, @sms_notifications = pagy(current_user.sms_notifications.order(created_at: :desc))
    end
  end
end
