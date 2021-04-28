class Trail
  attr_reader :name, :length, :level

  def initialize(trail_info)
    @name = trail_info[:name]
    @length = trail_info[:length]
    @level = trail_info[:level]
  end
end
