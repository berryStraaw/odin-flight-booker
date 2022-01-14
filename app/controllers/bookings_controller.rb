class BookingsController < ApplicationController

  def new
    @bookings=Booking.new
    @flight=Flight.where(id: params[:flight_id])
    @passenger_number=params[:passenger_number].to_i
  end

  def create
    @flight=Flight.where(id: params[:flight_id])
    p(@flight)
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to root_path, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def booking_params
    params.permit(:flight_id, passengers_attributes: [:id, :name])
  end
end
