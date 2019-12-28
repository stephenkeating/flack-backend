class Channel < ApplicationRecord
  has_many :channel_users
  has_many :chats
  has_many :users, through: :channel_users
end
