# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

hotelReservation = HotelReservation.new({customer_name:"Marlene Uwamahoro", date: "29/01/2017" , room_number: 30})

puts "TESTING reservation info"

hotelReservation.room_number = 40

if hotelReservation.room_number == 40
  puts "PASS"
else
  puts "F"
end

if hotelReservation.add_a_fridge == ["fridge"]
  puts "PASS"
else
  puts "F"
end

if hotelReservation.add_a_crib.last == "crib"
  puts "PASS"
else
  puts "F"
end

result = hotelReservation.add_a_custom_amenity("Wi-Fi")

if result.last == "Wi-Fi"
  puts "PASS"
else
  puts "F"
end

p hotelReservation