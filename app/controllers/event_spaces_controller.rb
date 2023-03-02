class EventSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :search

  def index
    if params[:query].present?
      @event_spaces =  EventSpace.search_by_city_and_name_and_description(params[:query])
    else
      @event_spaces =  EventSpace.all
    end
  end

  def show
    @event_space = EventSpace.find(params[:id])
    @my_spaces = EventSpace.where(user: current_user)
  end

  def new
    @event_space = EventSpace.new
  end

  def create
    @event_space = EventSpace.new(event_space_params)
    @event_space.user_id = current_user.id
    if @event_space.save
      redirect_to event_space_path
    else
      render :new
    end
  end

  def edit
    @event_space = EventSpace.find(params[:id])
  end

  def update
    @event_space = EventSpace.find(params[:id])
    @event_space.update(event_space_params)
    redirect_to event_space_path
  end

  private
  def event_space_params
    params.require(:event_space).permit(:name, :adress, :description, :price_per_hour, :min_hour, :city, :photo)
  end
end
