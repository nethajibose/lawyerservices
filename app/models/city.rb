class City < ActiveRecord::Base
	has_many :lawyers
	scope :search_by_name, ->(name) {where("name ilike ?", "%#{name.downcase}%").collect {|city| [city.id, city.name]} }
	
	def city_name
		self.name
	end
	
	def self.search_city(name)
		cities = []
		result = self.search_by_name(name)
		result.each {|city| cities << {:label => city[1], :id => city[0]} }
		cities
	end
end
