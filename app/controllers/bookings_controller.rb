class BookingsController < ApplicationController

    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.new
    end

    def new
        @booking = Booking.new
        @room = Room.find(params[:room_id])
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.user = current_user
        @room = Room.find(params[:room_id])
        @booking.room = @room
        if @booking.save
            flash[:notice] = "Successfully Booked"
            redirect_to hotel_path(@room.hotel)
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def booking_params
        params.require(:booking).permit(:start, :end)
    end
end
