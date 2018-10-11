require 'gilded_rose'
require 'conjureditem'

describe GildedRose do

  context 'when item is a conjured item' do
    context 'before sell_in' do
      it 'lowers quality by two after one day' do
        items = [Item.new("Conjured Item", 15, 11)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(-2)
      end
    end

    context 'after sell_in' do
      it 'lowers quality by four after a day' do
        items = [Item.new("Conjured Item", 0, 11)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(-4)
      end
    end
  end
end
