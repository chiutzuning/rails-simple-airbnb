class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flats = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def update
    # find id
    @flat.update(flat_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to flat_path(@flat)
  end

  def destroy
    # find id
    @flat.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:rflat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
