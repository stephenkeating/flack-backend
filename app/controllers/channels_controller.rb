class ChannelsController < ApplicationController

  def index
    @channels = Channel.all
    render json: @channels
  end

  def show
    @channel = Channel.find(params[:id])
    render json: @channel
  end

  def create
    @channel = Channel.create(channel_params)
    render json: @channel
  end

  def destroy
    @channel = Channel.find(params[:id])
    @channel.destroy
    render json: {status: 'SUCCESS', message: 'deleted the channel', data: @channel}
  end

  private

  def channel_params
    params.permit(:name, :description)
  end

end
