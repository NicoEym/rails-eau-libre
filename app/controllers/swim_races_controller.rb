class SwimRacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show, :index]

  def new
    @swim_race = SwimRace.new
  end

  def create
    @swim_race = SwimRace.new(swim_race_params)
    @swim_race.save
  end

  def index
    @swim_races = SwimRace.all
  end

  def show
    @swim_race = SwimRace.find(params[:id])
  end

  private

  def swim_race_params
    params.require(:swim_race).permit(:name, :address)
  end

end
