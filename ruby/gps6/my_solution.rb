# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Makes a relative file in directory accessable.
# Require in general brings in outside info such as gems.

require_relative 'state_data'

class VirusPredictor

  # Initialize constructs method, sets attributes. Takes input.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # virus_effect calls the other two methods, predicted_deaths and
  # speed_of_spread.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Returns deaths based on population density. Prints out 
  # how death will occur in the state.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

    # Take in population density and returns speed variable.

  def speed_of_spread
    # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



STATE_DATA.each_pair do |key, value|

  s = VirusPredictor.new(key, value[:population_density], value[:population])
  s.virus_effects

end




#=======================================================================
# Reflection Section

# Inside the parent hash is the input as a hash in of itself, along
# with the state that the input corresponds to. 
# The parent hash is using a hash rocket, while the other hash 
# uses symbols. For non-symbols, use a hash rocket. 

# require_relative
# Makes a relative file in directory accessable.
# Require in general brings in outside info such as gems.

# You can use each, each_pair, map methods.

# The attributes were unnessessary. 

# The concept I probably learned the most about was the private function.