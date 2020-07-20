class SwimEventsController < ApplicationController
  before_action :set_swim_event, only: [:update, :destroy]

  def new
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event = SwimEvent.new
    authorize @swim_event
  end

  def create
    @swim_event = SwimEvent.new(swim_event_params)
    authorize @swim_event
    @swim_event.swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event.save
  end

  def edit
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_events = SwimEvent.where(swim_race_id: @swim_race_id)
  end

  def update
    @swim_event = SwimEvent.find(params[:id])
    @swim_event.update(swim_event_params) if @swim_event.distance != params[:distance] || @swim_event.price != params[:price] || @swim_event.comment != params[:comment]
    # redirect_to edit_swim_race_swim_event_path(@swim_race)
  end

  def destroy
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event.destroy
    redirect_to swim_race_path(@swim_race)
  end

  private

  def swim_event_params
    params.require(:swim_event).permit(:swim_race_id, :distance, :price, :comment)
  end

  def set_swim_event
    @swim_event = SwimEvent.find(params[:id])
    authorize @swim_event
  end
end
