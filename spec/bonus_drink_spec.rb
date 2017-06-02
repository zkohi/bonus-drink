require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe '#total_count_for' do
    context 'when an amount of bottle is 0' do
      specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
    end

    context 'when an amount of bottle is 1' do
      specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
    end

    context 'when an amount of bottle is 3' do
      specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
    end

    context 'when an amount of bottle is 9' do
      specify { expect(BonusDrink.total_count_for(9)).to eq 13 }
    end

    context 'when an amount of bottle is 11' do
      specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
    end

    context 'when an amount of bottle is 100' do
      specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
    end
  end
end
