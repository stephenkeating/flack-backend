class ChannelUserSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :channel
end
