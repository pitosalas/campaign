require_relative "./test_cases"
require_relative "registrar"
require_relative "params"

#
# campaign options
#  --run   	run (default is simulate only)
#  --min  	min users (default is 1)
#  --max 		max users (default is 100)

class Campaign
	def get_parameters
		@par = Params.new
	end

	def get_targets
		@cases = TestCases.new
		registrar(@cases)
	end

	def execute_campaign
		@cases.each do |tcase|
			siege = Siege.new(tcase.domain, @par.simulate?, @par.min_users, @par.max_users)
			siege.attack
			tcase.metrics = siege.get_metrics
		end
	end

	def results
	end

	def run
		get_parameters
		get_targets
		execute_campaign
		results
	end
end

Campaign.new.run

