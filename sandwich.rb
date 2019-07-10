class Sandwich
	@@bread
	@@fillings

	# Create a new sandwich
	def initialize(bread_type)
		@@bread = bread_type
		@@fillings = []
	end

	# Add a filling to the sandwich
	def add_filling(filling_type)
		@@fillings << filling_type
	end

	def get_sandwich
		sandwich_result = @@fillings.join(", ") + " on " + @@bread
	end

end
