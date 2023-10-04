class ExchangesController < ApplicationController
  def index
    @exchanges = Exchange.where(user_1_id: current_user.id)
  end

  def create
    @exchange = Exchange.new(exchange_params)
    if @exchange.save
      redirect_to timeslots_path
    else
      flash[:alert] = "Something went wrong"
    end
  end

  private

  def exchange_params
    params.require(:exchange).permit(:user_1_id, :booking_1_id, :user_2_id, :status)
  end
end
