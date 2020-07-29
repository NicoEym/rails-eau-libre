class SwimEventsController < ApplicationController
  before_action :set_swim_event, only: [:edit, :update, :destroy]

  def new
    @swim_race = SwimRace.find(params[:swim_race_id])
    @swim_event = SwimEvent.new
    @swim_event.swim_race = @swim_race
    authorize @swim_event
  end

  def create
    @swim_event = SwimEvent.new(swim_event_params)
    @swim_event.swim_race = SwimRace.find(params[:swim_race_id])
    authorize @swim_event
    if @swim_event.save
      redirect_to swim_race_path(@swim_event.swim_race)
    else
      render :new
    end
  end

  def edit
    @swim_race = @swim_event.swim_race
  end

  def update
    @swim_event = SwimEvent.find(params[:id])
    @swim_race = @swim_event.swim_race
    @swim_event.update(swim_event_params) if @swim_event.distance != params[:distance] || @swim_event.price != params[:price] || @swim_event.comment != params[:comment]
    redirect_to swim_race_path(@swim_race)
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
