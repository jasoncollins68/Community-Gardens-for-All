#Start of Code

# Module for Community Gardens for All

module CommunityGardens
 
  def self.grow_food(vegetables)
    if vegetables == 'Tomato'
      puts 'Tomatoes are great for salads'
    elsif vegetables == 'Carrot'
      puts 'Carrots are great for snacks'
    elsif vegetables == 'Lettuce'
      puts 'Lettuce makes delicious salads'
    elsif vegetables == 'Onion'
      puts 'Onions add flavor to recipes'
    else
      puts 'That vegetable is not suitable for growing in a community garden'
    end
  end
  
  def self.garden_layout(width, length)
    width * length
  end
  
  def self.find_plants(plant_type)
    if plant_type == 'Fruit'
      puts 'Apples, oranges, and strawberries can all be grown in a community garden'
    elsif plant_type == 'Herb'
      puts 'Basil, rosemary, and thyme are all great herbs to grow in a community garden'
    elsif plant_type == 'Vegetable'
      puts 'Tomatoes, carrots, and lettuce can all be grown in a community garden'
    else
      puts 'That type of plant is not suitable for growing in a community garden'
    end
  end
  
  def self.plan_garden(width, length, plants)
    garden_layout = width * length
    puts "Your garden layout will be #{garden_layout} square feet. The following plants are suggested for your garden:"
    plants.each { |plant| puts plant }
  end
  
  def self.find_soil(soil_type)
    if soil_type == 'Sandy'
      puts 'Sandy soil is great for vegetables as it allows water to flow freely'
    elsif soil_type == 'Clay'
      puts 'Clay soil is great for fruits as it retains water and is easy to work with'
    elsif soil_type == 'Loamy'
      puts 'Loamy soil is great for herbs as it is nutrient rich and drains well'
    else
      puts 'That type of soil is not suitable for growing in a community garden'
    end
  end
  
  def self.plan_watering(watering_schedule)
    if watering_schedule == 'Daily'
      puts 'Watering daily is great for fruits and herbs, as these plants need to be kept moist'
    elsif watering_schedule == 'Weekly'
      puts 'Watering weekly is great for vegetables, as these plants need a deep soak once a week to keep them healthy'
    elsif watering_schedule == 'Monthly'
      puts 'Watering monthly is great for larger plants, such as trees, as they need time to absorb the water before being watered again'
    else
      puts 'That type of watering schedule is not suitable for growing in a community garden'
    end
  end
  
  def self.build_compost(materials)
    if materials.include?('Leaves')
      puts 'Leaves are great for compost, as they provide nutrients for the soil'
    elsif materials.include?('Grass')
      puts 'Grass is great for compost, as it helps aerate the soil'
    elsif materials.include?('Eggshells')
      puts 'Eggshells are great for compost, as they provide calcium for the soil'
    else
      puts 'That type of material is not suitable for building a compost in a community garden'
    end
  end
  
  def self.plan_harvest(plants_harvested)
    if plants_harvested == 'Fruit'
      puts 'Fruit should be harvested when it is ripe and ready to be eaten'
    elsif plants_harvested == 'Herb'
      puts 'Herbs should be harvested when they are most fragrant and flavorful'
    elsif plants_harvested == 'Vegetable'
      puts 'Vegetables should be harvested when they are at their peak ripeness'
    else
      puts 'That type of plant is not suitable for harvesting in a community garden'
    end
  end
  
  def self.maintain_garden(maintenance_action)
    if maintenance_action == 'Weeding'
      puts 'Weeding is important to keep a garden healthy, as weeds can take away space and resources from other plants'
    elsif maintenance_action == 'Pruning'
      puts 'Pruning is important to keep a garden healthy, as it encourages new growth and can help control the size of certain plants'
    elsif maintenance_action == 'Mulching'
      puts 'Mulching is important to keep a garden healthy, as it adds organic matter to the soil and helps to retain moisture'
    else
      puts 'That type of maintenance action is not suitable for a community garden'
    end
  end
  
  def self.share_harvest(sharing_plan)
    if sharing_plan == 'Neighbors'
      puts 'Sharing your harvest with your neighbors is a great way to spread the wealth and build community'
    elsif sharing_plan == 'Food Pantry'
      puts 'Donating your harvest to a local food pantry is a great way to help those in need in your community'
    elsif sharing_plan == 'Farmers Market'
      puts 'Selling your harvest at a local farmers market is a great way to share your bounty with others and make some extra money'
    else
      puts 'That type of sharing plan is not suitable for a community garden'
    end
  end
  
end