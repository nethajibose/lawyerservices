class Lawyer < ActiveRecord::Base
	has_many :lawyer_services
	belongs_to :city
	
	default_scope {order("name ASC")}
	scope :search_by_city, ->(city_id) {where(city_id: city_id)}
	scope :search_by_service, ->(service) {joins(:lawyer_services).where("lawyer_services.service_name = ?", service)}
	scope :search_by_city_and_service, ->(city_id, service) {joins(:lawyer_services).where("city_id = ? AND lawyer_services.service_name = ?", city_id, service)}
	
	def self.find_lawyers(city_id, service)
		(city_id.present? && service.present?) ? self.search_by_city_and_service(city_id, service) : city_id.present? ? self.search_by_city(city_id) : self.search_by_service(service)
	end
	
end

