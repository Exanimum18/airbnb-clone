class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @plan = Plan.find(params[:plan_id])
    @booking = Booking.find(params[:booking_id])
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @booking = Booking.new
  end

  def create
    #localhost:3000/plans/4/bookings/new
    @plan = Plan.find(params[:plan_id])
    #@plan => id+4 categroty+"¨sdfsfs",
    @booking = Booking.new(booking_params)
    #@booking.id = nil
    #@booking.user_id = nil
    #@booking.plan_id = nil
    #@booking.status = "¨por confirmar"
    @booking.user_id = current_user.id
    #@booking.user_id = 3
    @booking.plan_id = @plan.id

    if @booking.save
      redirect_to plan_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @plan = @booking.plan
    @booking.destroy
    redirect_to plan_bookings_path(@plan), status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status)
  end
end
