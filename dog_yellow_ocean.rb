# Start of file

#!/usr/bin/env ruby

# A Ruby class for creating community gardens
class CommunityGarden
  # Constructor
  def initialize(name)
    @name = name
    @gardens = []
  end
  
  # Instance methods
  def add_garden(garden_name)
    @gardens << garden_name
  end
  
  def remove_garden(garden_name)
    @gardens.delete(garden_name)
  end
  
  def list_gardens
    puts "Gardens in #{@name}:"
    @gardens.each { |garden| puts garden }
  end
end

# Main program
puts "Welcome to Community Gardens for All!"

# Create an instance of CommunityGarden
garden_name = gets.chomp
my_garden = CommunityGarden.new(garden_name)

# Prompt user for actions
while true
  puts "What would you like to do? (add, remove, list, exit)"
  action = gets.chomp
  
  if action == "add"
    puts "What is the name of the garden you would like to add?"
    garden_name = gets.chomp
    my_garden.add_garden(garden_name)
  
  elsif action == "remove"
    puts "What is the name of the garden you would like to remove?"
    garden_name = gets.chomp
    my_garden.remove_garden(garden_name)
 
  elsif action == "list"
    my_garden.list_gardens
  
  elsif action == "exit"
    puts "Goodbye!"
    break
  end
end