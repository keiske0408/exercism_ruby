=begin
Working with an amusement park, you've been handed a specification to design a system to administer attendance and rides.
 You've been tasked with modeling the Attendee (person visiting the park).
=end
class Attendee
  def initialize(height)
    @height = height.to_f
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end