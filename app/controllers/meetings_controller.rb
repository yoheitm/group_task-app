class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def index
    @group = Group.find(params[:group_id])
    @meetings = @group.meetings.order(id: "DESC")
    @groups = Group.all.order(id: "DESC")
  end

  def new
    @group = Group.find(params[:group_id])
    @meeting = Meeting.new
  end

  def create
    @group = Group.find(params[:group_id])
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:group_id])
    @meeting = @group.meetings.find(params[:id])
  end

  def update
    @group = Group.find(params[:group_id])
    @meeting.update(meeting_params)
    if @meeting.save
      redirect_to action: :show
    else
      render :edit
    end
  end

  def show
    @group = Group.find(params[:group_id])
    @meeting = @group.meetings.find(params[:id])
    @groups = Group.all.order(id: "DESC")
  end

  def destroy
    @group = Group.find(params[:group_id])
    @meeting.destroy
    redirect_to group_meetings_path(@group)
  end

  private
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:title, :content, :start_time).merge(group_id: @group.id)
  end

end
