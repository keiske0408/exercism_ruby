=begin
The port of Palermo is a busy harbor, with a lot of ships coming and going. It has for a long time had a manual system
for keeping track of the ships that are currently in the harbor. This system is very error prone, and the harbor chief has decided to replace it with a computerized system.

The harbor chief has hired you to implement the new system. The system has to handle identifiers for ships, but also
for destinations.
=end
module Port
  IDENTIFIER = :pale.upcase

  def self.get_identifier(city)
    city.upcase.slice(0,4).to_sym
  end

  def self.get_terminal(ship_identifier)
    identifier = ship_identifier.upcase.slice(0,3).to_sym

    if identifier.start_with?("OIL") || identifier.start_with?("GAS")
      :A
    else
      :B
    end
  end

end