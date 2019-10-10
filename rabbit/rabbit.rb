class Rabbit

	@@hungry

	def initialize
		@@hungry = true
	end

	def hunger_status
		if @@hungry then
			status = "Rabbit is hungry"
		else
			status = "Rabbit is not hungry"
		end
		status
	end

end