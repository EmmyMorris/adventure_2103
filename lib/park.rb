class Park
  attr_reader :name, :trails

  def initialize(name)
    @name = name
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(mileage)
    @trails.select do |trail|
      trail.length <= mileage
    end
  end

  def hikeable_miles
    trail_lengths = @trails.map do |trail|
      trail.length
    end
    trail_lengths.sum.round(2)
  end
end
