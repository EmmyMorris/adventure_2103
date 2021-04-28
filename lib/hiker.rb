class Hiker
  attr_reader :name,
              :experience_level,
              :snacks

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
    @amount = 0
  end

  def pack(snack, amount)
    current_amount = @snacks[snack] || 0
    @snacks[snack] = current_amount + amount
  end
end
