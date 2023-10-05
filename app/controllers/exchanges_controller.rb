class ExchangesController < ApplicationController
  def index
    @exchanges_demands = Exchange.where(user_1_id: current_user.id)
    @exchanges_resquests = Exchange.where(user_2_id: current_user.id)
  end

  def create
    @exchange = Exchange.new(exchange_params)
    if @exchange.save
      flash[:notice] = "Demande d'échange envoyée"
      redirect_to timeslots_path
    else
      puts @exchange.errors.full_messages
      flash[:alert] = @exchange.errors.full_messages.join(", ")
      redirect_to timeslots_path
    end
  end

  def destroy
    @exchange = Exchange.find(params[:id])
    @exchange.destroy
    redirect_to exchanges_path
  end

  private

  def exchange_params
    params.permit(:user_1_id, :booking_2_id, :user_2_id, :status)
  end
end
