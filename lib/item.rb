# Don't change anything in this file

class Item
  attr_accessor :quality, :days_remaining

  def initialize(quality. days_remaining)
    @quality, @days_remaning = quality, days_remaning
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
