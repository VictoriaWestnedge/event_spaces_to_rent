class BookingsController < ApplicationController
  before_action :set_event_space, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.event_space = @event_space
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to event_space_path(@event_space)
    else
      render :new
    end
  end

private
  def set_event_space
   @event_space = Event_Space.find(params[:event_space_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :qty_hour)
  end

end
