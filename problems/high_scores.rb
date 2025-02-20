class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.pop
  end

  def personal_best
    @scores.max()
  end

  def personal_top_three
    @scores.max(3).sort.reverse
  end

  def latest_is_personal_best?
    latest >= personal_best
  end
end

s = HighScores.new([100, 40, 10, 150])
