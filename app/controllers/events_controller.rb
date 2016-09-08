class EventsController < ApplicationController
	# before_action :all_tasks, only: [:index, :create]
	# respond_to :html, :js

	def index
		@events = current_user.events
	end

	def create
		@event = Event.new(user_id: current_user.id, friend_id: current_user.friends.first.id, drone_id: 1)

		if @event.save
			# get location data from phone (add to event table)
			if request.xhr?
				@event.update(place_id: params["place_id"])
			else
			end
		else
			@error_messages = @event.errors.full_messages
			p @error_messages
			root_path
		end
	end

	def edit
		p "in the edit route"
		p "*" * 50
		edit_event_path
	end

	def show
		@event = Event.find(params[:id])
		@user = User.find(@event.user.id)

		#friend variable will need to be updated
		@friend = Friend.find(@user.friends.first.id)

		event_path
	end

	def update
		# assign:
			# event.permanent_url
		# delete:   ????
			# event.temp_url
		# update:
			# event.completed = true

		# submits text message to friend indicating home safely
		redirect_to 'events_path'
	end

	def destroy
		# does user need to be able to destroy event from the events index?
	end

end
