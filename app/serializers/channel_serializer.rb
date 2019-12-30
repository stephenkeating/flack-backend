class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :chats
end
