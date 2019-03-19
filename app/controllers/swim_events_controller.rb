class SwimEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event = SwimEvent.new
  end

  def create
    @swim_event = SwimEvent.new(swim_event_params)
    @swim_event.swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event.save
  end

  def edit
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event = SwimEvent.new
  end

  def update
    @swim_event = SwimEvent.new(swim_event_params)
    @swim_event.swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event.update(swim_events_params)
    redirect_to swim_race_path(@swim_event.swim_race)
  end

  private

  def swim_event_params
    params.require(:swim_event).permit(:swim_race_id, :distance, :price, :comments)
  end
end
