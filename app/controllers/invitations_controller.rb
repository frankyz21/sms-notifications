class InvitationsController < ApplicationController
  def new
  end

  def create
    phone_number = params[:phone_number]
    message = params[:message]

    # Store SMS notification details
    SmsNotification.create!(
      recipient_phone_number: phone_number,
      message: message
    )

    redirect_to root_path, notice: 'Invitation sent successfully!'
  end
end
