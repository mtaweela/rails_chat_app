class ChangeMessageName < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :message, :text
  end
end
