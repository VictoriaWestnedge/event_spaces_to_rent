class EventSpacesController < ApplicationController
  def index
    @event_spaces = EventSpace.all
  end

  def show
    @event_space = EventSpace.find(params[:id])
  end
end
