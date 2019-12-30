class User < ApplicationRecord
  has_many :channel_users, dependent: :delete_all
  has_many :chats, dependent: :delete_all
  has_many :channels, through: :channel_users, dependent: :delete_all
end
