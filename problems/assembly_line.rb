=begin
In this exercise you'll be writing code to analyze the production of an assembly line in a car factory.
The assembly line's speed can range from 0 (off) to 10 (maximum).
=end
class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    c_per_hour = 221.0

    if @speed == 10
      @speed * c_per_hour* 0.77
    elsif @speed >= 9
      @speed * c_per_hour * 0.8
    elsif @speed >= 5
      @speed * c_per_hour * 0.9
    elsif @speed >= 1
      @speed * c_per_hour
    else
      0.0
    end

  end

  def working_items_per_minute
    (production_rate_per_hour/60).to_i
  end

end