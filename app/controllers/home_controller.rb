class HomeController < ApplicationController
	
	#skip_before_filter :authenticate_user!, :only => [:index]
	
	def index
		@user = current_user
	end
end
