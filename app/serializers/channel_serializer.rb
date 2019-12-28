class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_many :chats
end
