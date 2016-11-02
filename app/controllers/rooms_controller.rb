class RoomsController < ApplicationController
	def index
	end

	def create
    @room = Room.new(name: params[:name])
  	if @room.save
  		redirect_to root_path, notice: "Room created"
  	else
  	    redirect_to root_path
   end
	end

	def show
		@room = Room.find(params[:id])
		redirect_to room_messages_path(@room)
	end

	private
	def room_params
		params.require(:room).permit(:name)
	end
end
