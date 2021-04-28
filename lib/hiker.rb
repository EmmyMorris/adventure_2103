class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
    @amount = 0
    @parks_visited = []
  end

  def pack(snack, amount)
    current_amount = @snacks[snack] || 0
    @snacks[snack] = current_amount + amount
  end

  def visit(park)
    @parks_visited << park
  end
end
