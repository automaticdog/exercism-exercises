class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate_per_hour = @speed * 221
    if @speed <= 8 && @speed >= 5
      rate_per_hour * 0.9
    elsif @speed >=0 && @speed <= 4
      rate_per_hour * 1
    elsif @speed == 9
      rate_per_hour * 0.8
    else rate_per_hour * 0.77
    end
  end

  def working_items_per_minute
    prod_rate = @speed * 221
    if @speed == 10
      viable_cars = (prod_rate / 60.0) * 0.77
      viable_cars.to_i
    elsif @speed == 9
      viable_cars = (prod_rate / 60.0) * 0.8
      viable_cars.to_i
    elsif @speed <= 8 && @speed >= 5
      viable_cars = (prod_rate / 60.0) * 0.9
      viable_cars.to_i
    else viable_cars = (prod_rate / 60.0)
      viable_cars.to_i
    end
  end
  # def cars_per_min
  #   prod_rate = @speed * 221
  #     viable_cars = prod_rate / 60 * 0.77
  #     viable_cars.to_i
  # end
end


# ======== Troubleshooting checks - was returning 27.72 for speed=10 
#          bc of dividing by int vs float
# speed_10 = AssemblyLine.new(10)

# speed = 10
# prod_rate = speed * 221
# viable_cars = prod_rate / 60.0 * 0.77

# puts speed_10.working_items_per_minute
# p speed_10.cars_per_min
# puts prod_rate
# puts viable_cars