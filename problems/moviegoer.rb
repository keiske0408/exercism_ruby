=begin
In this exercise you will build out rules for a movie theater's website.
=end
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10 : 15
  end

  def watch_scary_movie?
    @age >= 18
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
      @member ? "🍿" : raise(NotMovieClubMemberError, "You must be a Movie Club member to claim free popcorn!")
  end
end




