class MessagesController < ApplicationController
	def index
		@messages = Message.find_by_room_id params[:room_id]
	end

end
