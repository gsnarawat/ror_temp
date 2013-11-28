class HomeController < ApplicationController

	def index
	    respond_to do |format|
		    format.html
		    format.pdf do
		      render :pdf => "my_pdf", # pdf will download as my_pdf.pdf
		        :layout => '../home/index', # uses views/layouts/pdf.haml
		        :show_as_html => params[:debug].present? # renders html version if you set debug=true in URL
		      end
		    end
	end
		


	def about
	end

	def portfolio
		@home = Home.find(8)
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
