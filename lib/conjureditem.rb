class Conjured
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      item.sell_in -= 1
      item.quality -= 2
      item.quality -= 2 if item.sell_in <= 0
    end
  end
end
