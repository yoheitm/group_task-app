class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]

  def index
    @group = Group.find(params[:group_id])
    @meeting = @group.meeting
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

  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: "Meeting was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:name, :start_time)
  end
end