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

  def possible_trails
    trails = @parks_visited.map do |park|
      park.trails
    end.flatten
    trails.select do |trail|
      trail.level == @experience_level
    end
  end

  def favorite_snack
    favorite_snack = @snacks.values.max_by do |snack|
      snack
    end
  end
end
