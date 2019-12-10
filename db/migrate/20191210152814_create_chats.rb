class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :name
      t.references :application
      t.integer :number
      t.integer :messages_count

      t.timestamps
    end
  end
end
