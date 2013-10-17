class HomeController < ApplicationController

	def index
	end


	def about
	end

	def portfolio
	end

	def contact
		@home = Home.new
	end

	def create
		@home = Home.new(params[:home])
		if @home.save
			
			redirect_to contact_path, :notice=>"Message has been sent!"
	    else
	    	render 'home/contact'
	    end
	end
end
