class MessageSerializer < ActiveModel::Serializer
  attributes :text, :number, :created_at
end
