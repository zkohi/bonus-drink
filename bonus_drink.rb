class BonusDrink
  def self.total_count_for(amount)
    fn = lambda do |n|
      sub = (n / 3)
      mod = (n % 3)
      sub > 0 ? sub + fn.call(sub + mod) : 0
    end
    amount + fn.call(amount)
  end

private

end
