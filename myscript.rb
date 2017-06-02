class Car
	WHEELS = 4
	@@number_of_cars = 0
	def initialize
		@@number_of_cars = @@number_of_cars + 1
	end
	
	def self.count
		@@number_of_cars
	end
	
	def mileage=(x)
		@mileage = x
	end
	
	def mileage
		@mileage
	end

end

class StretchLimo < Car 
	WHEELS = 6
	@@televisions = 1
	
	def turn_on_television
	end
end

class PontacFirebird < Car 
end

class VolksVagen < Car
end

if Car.count.zero?
	puts "No cars have been produced yet."
elsif Car.count >= 10
	puts "Production capacity have been reached."
else
	puts "New cars can still be produced."
end

kitt = PontacFirebird.new 
kitt.mileage = 5667

herbie = VolksVagen.new 
herbie.mileage = 33014

batmobile = PontacFirebird.new 
batmobile.mileage = 4623

larry = StretchLimo.new 
larry.mileage = 20140

unless kitt.is_a?(StretchLimo)
	puts "This car is only licensed to seat two people."
end

puts "Service due!" unless kitt.mileage < 25000

while Car.count < 10
	Car.new 
	puts "A new car instance was created"
end

