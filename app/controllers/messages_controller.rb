class MessagesController < ApplicationController
  before_action :set_message
  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  def create
    @message = @group.messages.new(message_params)
    if @message.save
      redirect_to group_messages_path(@group)
    else
      @messages = @group.messages.includes(:user)
      render :index
    end
  end

  private

  def set_message
    @group = Group.find(params[:group_id])
    @groups = Group.all.order(id: "DESC")
  end

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
