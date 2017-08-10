class CitiesController < ApplicationController
	before_action :set_city, only: [:show, :edit, :update, :destroy]
  def index
  	@city=City.all
  end


  def new
  	@city=City.new
  end

  def create

  	@city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city}
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end

  end

  private
     def set_city
      @city = City.find(params[:id])
    end
     def city_params
      params.require(:city).permit(:name , :code)
    end

end
