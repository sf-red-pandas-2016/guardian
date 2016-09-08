class EventsController < ApplicationController
	# before_action :all_tasks, only: [:index, :create]
	# respond_to :html, :js

	def index
		@events = current_user.events
	end

	def new
		render 'in-progress'
	end

	def create
		@event = Event.new(user_id: current_user.id, drone_id: 1)

		if @event.save

			if request.xhr?

				@event.to_json
			else
			end
		else
			@error_messages = @event.errors.full_messages
			p @error_messages
			root_path
		end
		#
	end

	def edit
		edit_event_path
	end

	def show
		p "In show route"
		@user = User.find(params[:id])
		@event = Event.last
		@friend = Friend.find(@event.friend_id)
		event_path
	end

	def update
		redirect_to 'events_path'
	end

	def destroy
		# does user need to be able to destroy event from the events index?
	end

end
