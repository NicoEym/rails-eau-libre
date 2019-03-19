class SwimRaceEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_race_event = SwimRaceEvent.new
    @swim_events = SwimEvent.all
    @distances = @swim_events.map do |swim_event|
      swim_event.distance
    end
    @distances.to_a.sort
  end

  def create
    @swim_race_event = SwimRaceEvent.new(swim_race_event_params)
    @swim_race_event.swim_race = SwimRace.find(params[:swim_race_id])
    @swim_race_event.save
    redirect_to swim_race_path(@swim_race_event.swim_race)
  end

  def edit
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_race_event = SwimRaceEvent.new
  end

  def update
    @swim_race_event = SwimRaceEvent.new(swim_race_event_params)
    @swim_race_event.swim_race = SwimRace.find(params[:swim_race_id])
    @swim_race_event.update(swim_race_events_params)
    redirect_to swim_race_path(@swim_race_event.swim_race)
  end

  private

  def swim_race_event_params
    params.require(:swim_race_event).permit(:swim_race_id, :swim_event_id, :price, :equipment)
  end
end
