class EventSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :search

  def index
    @event_spaces = EventSpace.all
  end

  def show
    @event_space = EventSpace.find(params[:id])
  end

  def search
    @event_spaces = EventSpace.where("lower(city) LIKE ?", "%#{params[:city].downcase}%")
  end
end
