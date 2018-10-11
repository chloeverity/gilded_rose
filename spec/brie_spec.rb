require 'gilded_rose'
require 'brie'

describe GildedRose do

  context 'when item is Aged Brie' do
    context 'before sell_in' do
      it 'raises quality by one after a day' do
        items = [Item.new("Aged Brie", 5, 5)]
        expect { GildedRose.new(items).update_quality() }.to change { items[0].quality }.by(1)
      end

      it 'never raises quality beyond 50' do
        item = Item.new("Aged Brie", 1, 50)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(50)
      end
    end

    context 'after sell_in' do
      it 'raises quality by two after a day' do
        item = Item.new("Aged Brie", 0, 0)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(2)
      end

      it 'only raises quality to 50 when quality is at 49' do
        items = [Item.new("Aged Brie", 0, 50)]
        expect { GildedRose.new(items).update_quality() }.not_to(change { items[0].quality })
      end
    end
  end
end
