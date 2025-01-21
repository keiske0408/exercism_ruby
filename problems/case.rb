module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king" then 10
    else 0
    end

  end

  def self.card_range(card1, card2)
    range = parse_card(card1) + parse_card(card2)
    case range
    when (1..11) then "low"
    when (12..16) then "mid"
    when (17..20) then "high"
    when (21) then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    card_total = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)

    return "P" if card1 == "ace" && card2 == "ace"

    if card_total == 21
      if dealer_value <= 10
        return "W"
      else
        return "S"
      end
    end

    if card_total >= 17 && card_total <= 20
      return "S"
    end

    if card_total >= 12 && card_total <= 16
      if dealer_value >= 7
        return "H"
      else
        return "S"
      end

      return "H" if card_total <= 11
    end
  end
end
