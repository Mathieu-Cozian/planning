class TimeslotsController < ApplicationController
  def index
    @timeslots = Timeslot.where(
      start_time: Time.now.beginning_of_week..Time.now.end_of_week,
      end_time: Time.now.beginning_of_week..Time.now.end_of_week
    )
    @bookings = Booking.all
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

  def edit
    @timeslot = Timeslot.find(params[:id])
  end

  def update
    @timeslot = Timeslot.find(params[:id])
    if @timeslot.update(timeslot_params)
      redirect_to timeslots_path
    else
      render :edit
    end

  end
  private

  def timeslot_params
    params.require(:timeslot).permit(:start_time, :end_time, :task, :number_employee)
  end
end
