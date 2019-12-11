class Application < ApplicationRecord
  has_secure_token
  has_many :chats

  def self.update_chat_count
    ActiveRecord::Base.transaction do
      Application.all.each do |application|
        application.update(chat_count: application.chats.count)
      end
    end
  end
end
