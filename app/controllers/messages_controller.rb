class MessagesController < ApplicationController

  before_filter :authenticate_user!, except: [:index]


  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.save
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.update(removed: true) if @message.user == current_user
  end


private 

  def message_params  
    params.require(:message).permit(:content)
  end

end
