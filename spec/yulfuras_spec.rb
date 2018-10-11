require 'gilded_rose'
require 'yulfuras'

describe GildedRose do

  context 'when item is Yulfuras, Foot of Zeus' do
    it 'does not change sell_in' do
      item = Item.new("Yulfuras, Foot of Zeus", 1, 80)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq(1)
    end

    it 'does not change quality' do
      item = Item.new("Yulfuras, Foot of Zeus", 1, 80)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(80)
    end
  end
end
