class ChatSerializer < ActiveModel::Serializer
  attributes :id, :message, :user, :updated_at
  # belongs_to :channel
end
