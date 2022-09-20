class HotelsController < ApplicationController
    # skip_before_action :authenticate_user!
    before_action :set_hotel, only: [:show, :edit, :update, :destroy]

    def show
        @rooms = Room.all
        @booking = Booking.new
    end

    def index
        @hotels = Hotel.all
        @rooms = Room.all
    end

    def new
        @hotel = Hotel.new
    end

    def edit
    end

    def create
        @hotel = Hotel.new(hotel_params)
        if @hotel.save
            flash[:notice] = "Successfully Creates"
            redirect_to @hotel
        else
            render "new"
        end
    end

    def update        
        if @hotel.update(hotel_params)
            flash[:notice] = "Successfully Updated"
            redirect_to @hotel
        else
            render "edit"
        end
    end

    def destroy
        @hotel.destroy
        redirect_to hotels_path
    end

    private
    def set_hotel
        @hotel = Hotel.find(params[:id])
    end

    def hotel_params
        params.require(:hotel).permit(:name, :address)
    end
end