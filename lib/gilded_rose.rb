require_relative 'backstage'
require_relative 'normalitem'
require_relative 'sulfuras'
require_relative 'brie'
require_relative 'conjureditem'
require_relative 'cheddar'
require_relative 'item'
require_relative 'yulfuras'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      case
      when item.name == "normal"
        items = Normal.new(@items)
        items.update_quality
      when item.name == "Aged Brie"
        items = Brie.new(@items)
        items.update_quality
      when item.name == "Aged Cheddar"
        items = Cheddar.new(@items)
        items.update_quality
      when item.name == "Sulfuras, Hand of Ragnaros"
        items = Sulfuras.new(@items)
        items.update_quality
      when item.name == "Yulfuras, Foot of Zeus"
        items = Yulfuras.new(@items)
        items.update_quality
      when item.name == "Backstage passes to a TAFKAL80ETC concert"
        items = Backstage.new(@items)
        items.update_quality
      when item.name == "Conjured Item"
        items = Conjured.new(@items)
        items.update_quality
      when item.name == "Ultra-Conjured Item"
        items = UltraConjured.new(@items)
        items.update_quality
      end
    end
  end
end
