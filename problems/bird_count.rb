=begin
You're an avid bird watcher that keeps track of how many birds have visited your garden
in the last seven days.
You have five tasks, all dealing with the numbers of birds that visited your garden.
=end

class BirdCount
  def self.last_week
    @count = [0,2,5,3,7,8,4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    count = 0
    @birds_per_day.each do |bird|
      if bird >= 5
        count += 1
      end
    end
    count
  end

  def day_without_birds?
    @birds_per_day.any? {|visited| visited == 0}
  end
end


birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
puts bird_count.day_without_birds?
