class AddChatcountToApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :chat_token, :integer
  end
end
