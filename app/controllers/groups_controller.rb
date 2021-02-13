class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy, :drop]

  def index
    @groups = Group.all.order(id: "DESC")
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @group.update(group_params)
    if @group.save
      redirect_to group_messages_path(@group)
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to root_path
  end

  def drop
    @group.users.delete(current_user)
    redirect_to root_path
  end

  def join
    @group = Group.find_by(id: params[:id])
    @group.users << current_user
    redirect_to group_messages_path(@group)
  end

  private
  def group_params
    params.require(:group).permit(:name, user_ids:[])
  end

  def set_group
    @group = Group.find(params[:id])
  end
end