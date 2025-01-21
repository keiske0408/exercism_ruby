=begin
Continuing your work with the amusement park, you are tasked with writing some utility methods to facilitate checking
if an attendee can use a ride.
=end

class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

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