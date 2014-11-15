class LawyersController < ApplicationController
	respond_to :js, :html
	
	def index
	end
	
	def search
		@lawyers = Lawyer.find_lawyers(params[:city_id], params[:service]).page(params[:page])
		@service_counts = LawyerService.get_counts
	end
	
	def city_autocomplete
		render :json => City.search_city(params[:term])
	end
	
	def service_autocomplete
		render :json => LawyerService.service_search(params[:term])
	end
	
	def service
		lawyer = Lawyer.find_by(id: params[:lawyer_id])
		@services = lawyer.lawyer_services
	end
end
