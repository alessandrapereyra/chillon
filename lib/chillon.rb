require_relative "chillon/version"
require_relative "chillon/parser"
require_relative "chillon/handler"

module Chillon
 
	class Request

 		def initialize(token = "NEED_A_TOKEN")
 			@handler = Handler.new(token)
 		end

 		def method_missing(*args)
 			parser = Parser.new(*args)
 			if parser.match?
 				@handler.process(parser)
 			else
 				super(*args)
 			end

 		end

 	end

end
