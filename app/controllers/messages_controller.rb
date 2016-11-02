class MessagesController < ApplicationController
	def index
		@room = Room.find(params[:room_id])
	end

	def create
		@message = Message.new(message_params)
		if @message.save
			notice = 'Message created'
		else
			notice = 'Message save error'
		end			
		redirect_to room_messages_path(room_id: @message.room_id)
	end

	private
	def message_params
		params.require(:message).permit(:username, :content, :room_id)
	end

end
