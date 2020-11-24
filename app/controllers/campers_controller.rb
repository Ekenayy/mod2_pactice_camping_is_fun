class CampersController < ApplicationController
  
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.all.find(params[:id])
  end

  def new
    @camper = Camper.new
  end

  def create
    camper = Camper.create(camper_params)

    if camper.valid?
      redirect_to campers_path
    else 
      flash[:my_errors] = camper.errors.full_messages
      redirect_to new_camper_path
    end 

  end 

    private
      def camper_params
        params.require(:camper).permit(:name, :age)
      end 

end
