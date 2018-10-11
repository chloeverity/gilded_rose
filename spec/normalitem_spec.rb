require 'gilded_rose'
require 'normalitem'

describe GildedRose do

  context 'when item is generic' do
    context 'before sell_in' do
      it 'lowers quality by one after one day' do
        items = [Item.new("normal", 15, 11)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(-1)
      end
    end

    context 'after sell_in' do
      it 'lowers quality by two after a day' do
        items = [Item.new("normal", 0, 11)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(-2)
      end
    end
  end
end
