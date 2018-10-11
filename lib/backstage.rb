class Backstage
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item.sell_in -= 1
      return item.quality = 50 if item.quality >= 50
      return item.quality = 0 if item.sell_in < 0
      item.quality += 1
      item.quality += 1 if item.sell_in < 10 && item.quality < 49
      item.quality += 1 if item.sell_in < 5 && item.quality <= 49
    end
  end
end
