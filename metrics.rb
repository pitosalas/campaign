class Metrics
	attr_accessor :transactions, :transaction_rate, :elapsed_time, :response_time, :throughput

	def evaluate
		return 100
	end
end

