class SwimRacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :show, :index]

  def new
    @swim_race = SwimRace.new
  end

  def create
    @swim_race = SwimRace.new(swim_race_params)
    @swim_race.save
    redirect_to swim_race_path(@swim_race)
  end

  def index
    @swim_races = SwimRace.all
  end

  def show
    @swim_race = SwimRace.find(params[:id])
  end

  private

  def swim_race_params
    params.require(:swim_race).permit(:name, :city_name, :description, :dates, :source_url)
  end

end
