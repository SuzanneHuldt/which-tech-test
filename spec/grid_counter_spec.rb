require './lib/grid_counter.rb'
describe GridCounter do
  describe '#get direction' do
    it 'returns the current direction' do
      expect(subject.get_direction).to eq ('n')
    end
  end
  describe '#minus' do
    it 'increments input by -1' do
      expect(subject.minus(2)).to eq(1)
    end
  end
  describe '#plus' do
    it 'increments input by 1' do
      expect(subject.plus(2)).to eq (3)
    end
  end
end
