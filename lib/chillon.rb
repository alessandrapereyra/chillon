require_relative "chillon/version"
require 'rimac'

module Chillon
 
	class Request

 		def initialize(token = "NEED_A_TOKEN")
 			@access = Rimac::API.new(token)
 		end

 		def method_missing(*args)
 			name, attrs = args
 			if name =~ /get_(.*)/
 				callee = $1
 				name = transform_callee_to_guid(callee)
 				@access.get(name)
 			else
 				super(*args)
 			end
 		end

 		private

 		def transform_callee_to_guid(guid)  #museo_de_lima
 			guid.upcase.gsub("_", "-")
 		end

 	end

end
