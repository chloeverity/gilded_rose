class UltraConjured
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      item.sell_in -= 1
      item.quality -= 3
      item.quality -= 3 if item.sell_in <= 0
    end
  end
end
