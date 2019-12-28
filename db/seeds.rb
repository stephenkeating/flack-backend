# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Channel.destroy_all
ChannelUser.destroy_all
Chat.destroy_all

@vader = User.create(name: 'Darth Vader')
@luke = User.create(name: 'Luke')

@cloudCity = Channel.create(name: 'Cloud City', description: 'Bespin')

ChannelUser.create(user: @vader, channel: @cloudCity)
ChannelUser.create(user: @luke, channel: @cloudCity)

Chat.create(channel: @cloudCity, user: @vader, message: 'There is no escape! Don’t make me destroy you. Luke, you do not yet realize your importance. You’ve only begun to discover your power! Join me, and I will complete your training! With our combined strength, we can end this destructive conflict, and bring order to the galaxy.')
Chat.create(channel: @cloudCity, user: @luke, message: 'I’ll never join you!')
Chat.create(channel: @cloudCity, user: @vader, message: 'If only you knew the power of the Dark Side. Obi-Wan never told you what happened to your father.')
Chat.create(channel: @cloudCity, user: @luke, message: 'He told me enough! He told me you killed him!')
Chat.create(channel: @cloudCity, user: @vader, message: 'No, I am your father.')
Chat.create(channel: @cloudCity, user: @luke, message: 'No. No! That’s not true! That’s impossible!')
Chat.create(channel: @cloudCity, user: @vader, message: 'Search your feelings; you know it to be true!')
Chat.create(channel: @cloudCity, user: @luke, message: 'NOOOOOOO! NOOOOOOOO!!!')
