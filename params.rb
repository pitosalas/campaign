class Params
	attr_accessor :simulate 				# true or false
	attr_accessor :min_users
	attr_accessor :max_users

	def initializer
		@simulate = true
		@min_users = 1
		@max_users = 100
	end
end
