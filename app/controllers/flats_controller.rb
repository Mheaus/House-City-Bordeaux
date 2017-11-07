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

    @background_photos = [
      "outdoor1", "living1", "cuisine1",
      "outdoor9", "living2", "chambre5",
      "outdoor2", "living4", "outdoor8"
    ]
  end

  def update
  end

  private

  def clean_params
    params.require(:flat).permit(:name, :description, :address, photos: [])
  end
end
