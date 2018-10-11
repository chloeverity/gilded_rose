require 'gilded_rose'
require 'ultra_conjured'

describe GildedRose do

  context 'when item is an ultra conjured item' do
    context 'before sell_in' do
      it 'lowers quality by two after one day' do
        items = [Item.new("Ultra-Conjured Item", 15, 11)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(-3)
      end
    end

    context 'after sell_in' do
      it 'lowers quality by four after a day' do
        items = [Item.new("Ultra-Conjured Item", 0, 11)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(-6)
      end
    end
  end
end
