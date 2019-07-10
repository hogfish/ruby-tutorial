require_relative 'sandwich'

lunch = Sandwich.new("white bread")
lunch.add_filling("bacon")
lunch.add_filling("tomato")
lunch.add_filling("lettuce")
puts lunch.get_sandwich
