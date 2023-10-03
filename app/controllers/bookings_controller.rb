class BookingsController < ApplicationController

  def new
    @user = current_user
    @timeslot = Timeslot.find(params[:timeslot_id])
    @booking = Booking.new(timeslot_id: @timeslot.id, user_id: @user.id)
  end

  def create
    @bookings = Booking.all
    @timeslot = Timeslot.find(params[:timeslot_id])
    @booking = Booking.new(:user_id => current_user.id, :timeslot_id => params[:timeslot_id])
    if @bookings.where(timeslot_id: params[:timeslot_id]).count < @timeslot.number_employee
      @booking.save
      redirect_to timeslots_path
    else
      flash[:alert] = "Désolé, il a deja assez de participants pour ce créneau"
      redirect_to timeslots_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:timeslot_id, :user_id)
  end
end
