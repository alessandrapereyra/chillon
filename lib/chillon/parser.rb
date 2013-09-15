module Chillon

	class Parser

		attr_accessor :guid, :guids

		def initialize(args)
 			name, attrs = args

 			if name =~ /get_(.*)_and_(.*)/

 				callees = name.to_s.gsub("get_", "").split("_and_")
 				@guids  = callees.map{|guid| transform_callee_to_guid(guid) }
 				puts @guids.inspect
 			elsif name =~ /get_(.*)/
 				callee = $1
 				@guid = transform_callee_to_guid(callee)
 			end

		end

		def match?
			@guids || @guid
		end

		def multiple_results?
			@guids
		end

		private

 		def transform_callee_to_guid(guid)  #museo_de_lima
 			guid.upcase.gsub("_", "-")
 		end


	end

end


# "LICEN-DE-FUNCI-2013"