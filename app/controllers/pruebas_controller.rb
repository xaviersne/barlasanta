class PruebasController < InheritedResources::Base

  private

    def prueba_params
      params.require(:prueba).permit(:date, :time, :people)
    end

end
