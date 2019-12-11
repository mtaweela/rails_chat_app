class Chat < ApplicationRecord
  belongs_to :application
  has_many :messages

  def self.update_message_count
    ActiveRecord::Base.transaction do
      Chat.all.each do |chat|
        chat.update(chat_count: chat.messages.count)
      end
    end
  end
end
