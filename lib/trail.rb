class Trail
  attr_reader :name, :length, :level

  def initialize(trail_info)
    @name = trail_info[:name]
    @length = trail_info[:length]
    @level = trail_info[:level]
  end

  def length
    @length[0..2].to_f
  end
end
