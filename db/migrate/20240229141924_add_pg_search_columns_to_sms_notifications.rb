class AddPgSearchColumnsToSmsNotifications < ActiveRecord::Migration[7.0]
  def change
    add_column :sms_notifications, :pg_search_document, :text
  end
end
