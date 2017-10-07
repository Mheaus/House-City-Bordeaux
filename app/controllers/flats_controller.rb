class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
  end

  def create
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def update
  end

  private

  def clean_params
    params.require(:flat).permit(:name, :description, :address, photos: [])
  end
end
