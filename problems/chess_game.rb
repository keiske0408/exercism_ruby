=begin
As a chess enthusiast, you would like to write your own version of the game. Yes, there maybe plenty of implementations
 of chess available online already, but yours will be unique!

You start with implementing a basic movement system for the pieces.

The chess game will be played on a board that is 8 squares wide and 8 squares long.
The squares are identified by a letter and a number.
=end
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