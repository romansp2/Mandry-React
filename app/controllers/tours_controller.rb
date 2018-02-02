class ToursController < ApplicationController
def index

end

  private
    def set_tour
      @tour = Tour.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_params
      params.require(:tour).permit(:name, :description, :price, :cover, :country, :city)
    end
end
