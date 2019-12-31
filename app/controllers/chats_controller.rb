class ChatsController < ApplicationController

  def create
    @chat = Chat.create(chat_params)
    render json: @chat
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    render json: {status: 'SUCCESS', message: 'deleted the chat', data: @chat}
  end

  private

  def chat_params
    params.permit(:message, :channel_id, :user_id)
  end

end
