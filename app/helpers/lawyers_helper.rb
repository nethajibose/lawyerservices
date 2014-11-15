module LawyersHelper
	def get_service_count(service_counts, lawyer_id)
		count = service_counts[lawyer_id]
		count ? count : 0
	end
end
