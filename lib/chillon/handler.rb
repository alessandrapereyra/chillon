require 'rimac'

module Chillon
	class Handler

		def initialize(token)
			@access = Rimac::API.new(token)	
		end

		def process(parser)
		
			if parser.multiple_results?
				results = Hash.new
				parser.guids.map do |guid|
					results[guid] = get_from_access(guid)
				end
				results
			else
				get_from_access(parser.guid)
			end

		end
		
		def get_from_access(guid)
			@access.get(guid)
		end
		
	end
end
