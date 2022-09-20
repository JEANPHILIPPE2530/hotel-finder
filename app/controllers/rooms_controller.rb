class RoomsController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :set_room, only: [:show, :edit, :update, :destroy]
    before_action  :authorize, except: [:index, :show] 

    def show
    end

    def index
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def edit
    end

    def create
        @room = Room.new(room_params)
        if @room.save
            flash[:notice] = "Successfully Creates"
            redirect_to @room
        else
            render "new"
        end
    end

    def update        
        if @room.update(room_params)
            flash[:notice] = "Successfully Updated"
            redirect_to @room
        else
            render "edit"
        end
    end

    def destroy
        @room.destroy
        redirect_to @hotel
    end

    private
    def set_room
        @room = Room.find(params[:id])
    end

    def room_params
        params.require(:room).permit(:price, :capacity)
    end
end