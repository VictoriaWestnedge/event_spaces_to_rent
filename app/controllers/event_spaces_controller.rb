class EventSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :search

  def index
    if params[:query].present?  #busqueda
      @event_spaces =  EventSpace.search_by_city_and_name_and_description(params[:query])
    else
      @event_spaces =  EventSpace.all
    end

    @markers = @event_spaces.geocoded.map do |eve_esp|  #mapa
      {
        lat: eve_esp.latitude,
        lng: eve_esp.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {eve_esp: eve_esp}),
        marker_html: render_to_string(partial: "marker", locals: {eve_esp: eve_esp})
      }
    end
  end

  def show
    @event_space = EventSpace.find(params[:id])
    @my_spaces = EventSpace.where(user: current_user)

    @marker = #mapa
      [{
        lat: @event_space.latitude,
        lng: @event_space.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {eve_esp: @event_space}),
        marker_html: render_to_string(partial: "marker", locals: {eve_esp: @event_space})
      }]
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
