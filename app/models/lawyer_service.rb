class LawyerService < ActiveRecord::Base
	belongs_to :lawyer
	scope :service_search, ->(name) {where("service_name ilike ?", "%#{name.downcase}%").map(&:service_name).uniq }
	
	def self.get_counts
		group(:lawyer_id).count
	end
end
