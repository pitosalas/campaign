class TestCase
	attr_accessor :name, :email, :domain, :metrics
	def initialize(name, email, domain)
		@name = name
		@email = email
		@domain = domain
	end
end

class TestCases
	def initialize
		@registry = []
	end

	def reg(name, email, domain)
		@registry << TestCase.new(name, email, domain)
	end
end