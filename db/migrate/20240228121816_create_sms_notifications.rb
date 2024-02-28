class CreateSmsNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :sms_notifications do |t|
      t.string :recipient_phone_number
      t.text :message
      t.string :status
      t.text :error_message

      t.timestamps
    end
  end
end
