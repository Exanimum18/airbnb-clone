class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show

  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:plan_id])
  end
end
