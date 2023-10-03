class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(:user_id => current_user.id, :timeslot_id => params[:timeslot_id])
    redirect_to timeslots_path if @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:timeslot_id, :user_id)
  end
end
