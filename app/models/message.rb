class Message < ApplicationRecord
  belongs_to :chat
  searchkick word_middle: [:text]
end
