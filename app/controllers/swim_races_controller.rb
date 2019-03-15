class SwimRacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @swim_races = SwimRace.all
  end

  def show
    @swim_race = SwimRace.find(params[:id])
  end
end
