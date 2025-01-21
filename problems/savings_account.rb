=begin
In this exercise you will be working with savings accounts. Each year, the balance of a savings account is updated
based on the interest rate. The interest rate the bank gives depends on the amount of money in the accounts (its balance):

0.5% for a non-negative balance less than 1000 dollars.
1.621% for a positive balance greater than or equal to 1000 dollars and less than 5000 dollars.
2.475% for a positive balance greater than or equal to 5000 dollars.
3.213% for a negative balance (results in negative interest).
You have three tasks, each of which will deal with the balance and its interest rate.
=end
module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 5000
      2.475
    elsif balance >= 1000
      1.621
    elsif balance >= 0
      0.5
    else
      3.213
    end
  end


  def self.annual_balance_update(balance)
    rate = interest_rate(balance)

    interest = balance * (rate / 100)

    balance + interest
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    balance = current_balance

    while balance < desired_balance
      balance = annual_balance_update(balance)
      years += 1
    end
    years
  end
end