require 'date'
class SwimRacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  skip_after_action :verify_policy_scoped, :only => :index
  before_action :set_swim_race, only: [:edit, :update, :destroy]

  def new
    @swim_race = SwimRace.new
    authorize @swim_race
  end

  def create
    @swim_race = SwimRace.new(swim_race_params)
    authorize @swim_race
    @swim_race.user_id = current_user.id
    if @swim_race.save
      redirect_to swim_races_path(@swim_race)
    else
      render :new
    end
  end

  def index
    @swim_races = SwimRace.where.not(latitude: nil, longitude: nil)
    @swim_races = @swim_races.where('dates >= ?', Date.today).order(:dates)
    @search = params["search"]
    if @search.present?
      @city_name = @search["city_name"]
      if @city_name != ""
        coordinates = Geocoder.search(@city_name).first.coordinates
        @swim_races = @swim_races.near(coordinates, 200).order(:dates)
      end
    end
    @markers = @swim_races.map do |swim_race|
      {
        lat: swim_race.latitude,
        lng: swim_race.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { swim_race: swim_race }),
      }
    end
    @months = ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"]
  end

  def my_races
    @swim_races = policy_scope(SwimRace).order(:dates)
    authorize @swim_races
    @months = ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"]
  end

  def show
    @swim_race = SwimRace.find(params[:id])
    skip_authorization
    @markers = [{ lat: @swim_race.latitude, lng: @swim_race.longitude }]
    @months = ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"]
  end

  def edit
  end

  def update
    @swim_race.update(swim_race_params)
    redirect_to swim_race_path(@swim_race)
  end

  def destroy
    @swim_race.destroy
    redirect_to swim_races_my_races_path
  end

  private

  def swim_race_params
    params.require(:swim_race).permit(:name, :city_name, :description, :dates, :source_url, :photo, :swim_events)
  end

  def set_swim_race
    @swim_race = SwimRace.find(params[:id])
    authorize @swim_race
  end
end
