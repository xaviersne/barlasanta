class AppointmentsController < ApplicationController

  private

    def appointment_params
      params.require(:appointment).permit(:date, :time, :people, :client_devise_id)
    end

end
