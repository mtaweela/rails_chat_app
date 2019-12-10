class AddTokenToApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :token, :string
    add_index :applications, :token, unique: true
  end
end
