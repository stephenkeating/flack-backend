class ChatSerializer < ActiveModel::Serializer
  attributes :id, :message, :user
  # belongs_to :channel
end
