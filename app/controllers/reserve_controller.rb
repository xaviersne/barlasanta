class ReserveController < ApplicationController
  def create
    if params[:firstselect] == 1
      ReserveTable.create (people: "1-4" "5-10" "11-20", date: "monday" "tuesday" "wednesday" "thursday" "friday" "satuday", time: "12-5" "6-10", observations:"",status: "available" "not available")
  end
end
