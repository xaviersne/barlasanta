class ReserveController < ApplicationController
  def create
    if params[:firstselect] == '1'
      ReserveTable.create(people: params[:secondselect], date: params[:date], time: params[:time], client_devise_id: current_client_devise.id)
    else
      ReserveRoom.create(people: params[:secondselect], date: params[:date], time: params[:time], client_devise_id: current_client_devise.id)
    end
    redirect_to root_url, :notice => "Reserva realizada!"
  end
  def index
    @reserves = ReserveTable.all
  end

end