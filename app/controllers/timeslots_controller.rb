class TimeslotsController < ApplicationController
  def index
    @timeslots = Timeslot.where(
      start_date: Time.now.beginning_of_week..Time.now.end_of_week,
      end_date: Time.now.beginning_of_week..Time.now.end_of_week
    )
  end
  def new
    @timeslot = Timeslot.new
  end

  def create
    @timeslot = Timeslot.new(timeslot_params)
    if @timeslot.save
      redirect_to timeslots_path
    else
      render :new
    end
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:start_date, :end_date, :task, :number_employee)
  end
end
