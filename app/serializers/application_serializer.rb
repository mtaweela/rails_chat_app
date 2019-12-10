class ApplicationSerializer < ActiveModel::Serializer
  attributes :name, :chat_count, :created_at, :token
end
