# # names = ["jack", "jacob", "jhin", "john"]
# #
# # names.each do |name |
# #   p name
# # end
#
# user = {name: "bernard", address: 'Makati City'}
# puts user [:name]
# puts user [:address]
#
# # user = {:name => "bernard", :address => 'Makati City'}
#
# p :test.object_id
# p :test.object_id
#
# p "test".object_id
# p "test".object_id
#
# user_1 = {name: "bernard" , address: 'Makati City'}
# user_2 = {"name" => "john", address: 'Sorsogon City' }
#
# p user_2 ["name"]

=begin
matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

p matrix[1][1]
puts "---------"
matrix.each do | item_list|
  item_list.each do |item|
  p item
  end
end

user = {name: "bernard", address: 'Makati City'}
# p user.keys
# p user.values
# p user [name]

# memory saving
# hash always use symbol


class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40


  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    remaining_minutes_in_oven(actual_minutes_in_oven) + preparation_time_in_minutes(number_of_layers)
  end

  lasagna = Lasagna.new
  # puts lasagna.remaining_minutes_in_oven(30)
  # puts lasagna.preparation_time_in_minutes(2)
  puts lasagna.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)
end

class Attendee
  def initialize(height)
    @height = height.to_f
  end

  def height
    @height
  end

  def pass_id
    pass_id = nil
    pass_id = @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    raise 'Implement the Attendee#revoke_pass! method'
  end

  def has_pass?
    @pass_id != nil
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)
  end
end

attendee = Attendee.new(100)
attendee.issue_pass!(42)
puts attendee.allowed_to_ride?(120)


class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    @line.split(':')[0].gsub(/[\[ \]]/,'').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

new = LogLineParser.new('[ERROR]: Invalid operation').message
puts new
log = LogLineParser.new('[ERROR]: Invalid operation').log_level
puts log


class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    c_per_hour = 221.0
    if @speed == 10
      @speed * c_per_hour * 0.77
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

new = AssemblyLine.new(6).working_items_per_minute
puts new



module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 5000
      2.475
    elsif balance >= 1000
      1.621
    elsif balance >= 0
      0.5
    else
      -3.213
    end
  end

  def self.annual_balance_update(balance)
    rate = interest_rate(balance)

    interest = balance * (rate / 100)

    balance + interest
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end

end

# new = SavingsAccount.interest_rate(0), 0.000_1
# puts new

annual_balance = SavingsAccount.annual_balance_update(200.75)
puts annual_balance



module Port
  IDENTIFIER = :pale.upcase

  def self.get_identifier(city)
    city.upcase.slice(0,4).to_sym
  end

  def self.get_terminal(ship_identifier)
    identifier = ship_identifier.upcase.slice(0,3)

    if identifier.start_with?("OIL") || identifier.start_with?("GAS")
      :A
    else
      :B
    end
  end
end


  try = Port.get_terminal(:GAS123)
  puts try



module Chess
  RANKS = 1..8
  FILES = "A".."H"

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    nickname = first_name[..1] + last_name[-2..-1]
    nickname.upcase
  end

  def self.move_message(first_name, last_name, square)
    name = nick_name(first_name, last_name)
    file = square[0]
    rank = square[1].to_i

    if valid_square?(rank, file)
      "#{name} moved to #{square}"
    else
      "#{name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end

nickname = Chess.nick_name("John", "Doe")
puts nickname

move = Chess.move_message("John", "Doe", "A1")
puts move

=end






