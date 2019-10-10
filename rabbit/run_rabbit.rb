require_relative 'rabbit'

@snuffles = Rabbit.new
puts "Hello, please take care of this rabbit."

loop do
	puts "You can use the following commands: status | feed | wait | exit"
	command = gets.chomp

	case command
	when "status"
		puts @snuffles.hunger_status

	when "feed"
		foods = []
		loop do
			puts "What will you feed the rabbit? Type 'stop' to stop feeding."
			food = gets.chomp
			break if food == "stop"
			foods << food
		end
		@snuffles.feed(foods) unless foods.empty?
		puts @snuffles.hunger_status

	when "wait"
		puts "How many days will you wait?"
		days = gets.chomp
		@snuffles.last_feed days.to_i
		puts @snuffles.hunger_status
		
	when "exit"
		puts "Thanks for caring for the rabbit"
		break
	end

end
