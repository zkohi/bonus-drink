class BonusDrink
  def self.total_count_for(amount)
    amount + count_for(amount)
  end

private

  def self.count_for(amount)
    sub = (amount / 3)
    mod = (amount % 3)
    sub > 0 ? sub + count_for(sub + mod) : 0
  end
end
