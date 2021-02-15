class MeetingsController < ApplicationController
  before_action :set_meeting

  def index
    @meetings = @group.meetings.order(id: "DESC")
    @groups = Group.all.order(id: "DESC")
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    @meeting = @group.meetings.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])
    @meeting.update(meeting_params)
    if @meeting.save
      redirect_to action: :show
    else
      render :edit
    end
  end

  def show
    @meeting = @group.meetings.find(params[:id])
    @groups = Group.all.order(id: "DESC")
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to group_meetings_path(@group)
  end

  private
  def set_meeting
    @group = Group.find(params[:group_id])
  end

  def meeting_params
    params.require(:meeting).permit(:title, :content, :start_time).merge(group_id: @group.id)
  end

end
