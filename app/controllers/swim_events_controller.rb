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
    swim_race_id = @swim_race.id
    @swim_events = SwimEvent.where(swim_race_id: swim_race_id)
  end

  def update
    @swim_events = SwimEvent.where(swim_race_id: params[:swim_race_id])
    if @swim_events.include? params[:id].to_i
      binding.pry
      @swim_event = SwimEvent.find(params[:id])
      @swim_event.update(swim_event_params)
    else
      @swim_event = SwimEvent.new(swim_event_params)
      @swim_event.swim_race = SwimRace.find(params[:swim_race_id])
      binding.pry
      @swim_event.save
    end

    # redirect_to edit_swim_race_swim_event_path(@swim_race)
  end

  private

  def swim_event_params
    params.require(:swim_event).permit(:swim_race_id, :distance, :price, :comment)
  end
end
