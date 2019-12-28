class User < ApplicationRecord
  has_many :channel_users
  has_many :chats
  has_many :channels, through: :channel_users
end
