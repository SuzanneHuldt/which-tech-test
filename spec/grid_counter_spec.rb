require './lib/grid_counter.rb'
describe GridCounter do
  describe '#get direction' do
    it 'returns the current direction' do
      expect(subject.get_facing).to eq ('north')
    end
  end
  describe '#minus' do
    it 'increments input by -1' do
      expect(subject.minus_move(2)).to eq(1)
    end
  end
  describe '#plus' do
    it 'increments input by 1' do
      expect(subject.plus_move(2)).to eq (3)
    end
  end
  describe '#move x' do
    it 'increments the x value of location according to the polarity argument' do
      counter = GridCounter.new
      expect {counter.move_x('minus')}.to change {counter.location[0]}.by(-1)
    end
    it 'increments the x value of location according to the polarity argument' do
      counter = GridCounter.new
      expect {counter.move_x('plus')}.to change {counter.location[0]}.by(1)
    end
  end
  describe '#go north' do
    it 'returns the landing coordinates for one northward step' do
      counter = GridCounter.new
      expect {counter.go_north}.to change {counter.location[1]}.by(1)

    end
  end
  describe '#go south' do
    it 'returns the landing coordinates for one southward step' do
      counter = GridCounter.new
      expect {counter.go_south}.to change {counter.location[1]}.by(-1)

    end
  end
  describe '#go east' do
    it 'returns the landing coordinates for one eastward step' do
      counter = GridCounter.new
      expect {counter.go_east}.to change {counter.location[0]}.by(1)

    end
  end
  describe '#go west' do
    it 'returns the landing coordinates for one westward step' do
      counter = GridCounter.new
      expect {counter.go_west}.to change {counter.location[0]}.by(-1)

    end
  end

  describe '#move' do
    it 'moves in the provided direction' do
      counter = GridCounter.new
      expect(counter.move('right')).to eq([1,0])
    end
  end

end
