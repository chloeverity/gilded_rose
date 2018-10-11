require 'gilded_rose'

describe GildedRose do

  describe '#update_quality' do
    it 'makes sure it is using normal item update when given a normal item' do
      item = Item.new("normal", 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq 0
    end
    it 'makes sure it is using brie  update when given brie' do
      item = Item.new("Aged Brie", 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(2)
    end
    it 'makes sure it is using backstage update when given a backstage pass' do
      item = Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 49)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(50)
    end
    it 'makes sure it is using sulfuras update when given a sulfuras' do
      items = [Item.new("Sulfuras, Hand of Ragnaros", 10, 49)]
      expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(0)
    end
  end
end
