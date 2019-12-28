class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :channel_users
end
