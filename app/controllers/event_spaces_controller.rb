class EventSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :search

  def index
    @my_spaces = EventSpace.where(user: current_user)
    @event_spaces = EventSpace.where("lower(city) LIKE ?", "%#{params[:city].downcase}%")
  end

  def show
    @event_space = EventSpace.find(params[:id])
  end

end
