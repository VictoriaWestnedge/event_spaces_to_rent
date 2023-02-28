class BookingsController < ApplicationController
  before_action :set_event_space, only: [:new, :create]

  def index
    @bookings = Booking.all
  end


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.event_space = @event_space
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

private
  def set_event_space
   @event_space = EventSpace.find(params[:event_space_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :qty_hour)
  end

end
