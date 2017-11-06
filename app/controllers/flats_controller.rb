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

    @photos = [
      ["outdoor2", "outdoor8"],
      ["living1", "living4"],
      ["cuisine1", "cuisine7"],
      ["chambre1", "chambre2"],
      ["chambre3", "chambre5"],
      ["chambre6", "salon4"],
      ["bathroom1", "dressing1"]
    ]
  end

  def update
  end

  private

  def clean_params
    params.require(:flat).permit(:name, :description, :address, photos: [])
  end
end
