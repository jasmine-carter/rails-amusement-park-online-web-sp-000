class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
    @user = current_user
  end

  def show
    @attraction = Attraction.find_by(id: params[:id])
<<<<<<< HEAD
    @ride = @attraction.rides.build(user_id: current_user.id)
  end

  def create
  #  binding.pry
    @attraction = Attraction.create(attraction_params)
    redirect_to @attraction
  end

  def edit
    @attraction = Attraction.find_by(id: params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def new
    @attraction = Attraction.new
  end


  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
=======
  end

  def create
>>>>>>> 9e9ae3ecbe58f5a684e7030487da6be4b67e2d57
  end

end
