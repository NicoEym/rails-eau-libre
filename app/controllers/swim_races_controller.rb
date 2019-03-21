class SwimRacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :show, :index, :destroy, :edit, :update]

  def new
    @swim_race = SwimRace.new
  end

  def create
    @swim_race = SwimRace.new(swim_race_params)
    @swim_race.save
    redirect_to new_swim_race_swim_event_path(@swim_race)
  end

  def index
    @swim_races = SwimRace.where.not(latitude: nil, longitude: nil)
    @search = params["search"]
    if @search.present?
      @city_name = @search["city_name"]
      @swim_races = SwimRace.where(city_name: @city_name)
    end
    @markers = @swim_races.map do |swim_race|
      {
        lat: swim_race.latitude,
        lng: swim_race.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { swim_race: swim_race }),
      }
    end
  end

  def show
    @swim_race = SwimRace.find(params[:id])
    @markers = [{ lat: @swim_race.latitude, lng: @swim_race.longitude }]
  end

  def edit
    @swim_race = SwimRace.find(params[:id])
  end

  def update
    @swim_race = SwimRace.find(params[:id])
    @swim_race.update(swim_race_params)
    redirect_to edit_swim_race_swim_event_path(@swim_race)
  end

  def destroy
    @swim_race = SwimRace.find(params[:id])
    @swim_race.destroy
    redirect_to swim_races_path
  end

  private

  def swim_race_params
    params.require(:swim_race).permit(:name, :city_name, :description, :dates, :source_url, :photo, :swim_events)
  end
end
