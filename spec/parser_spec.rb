require './lib/parser.rb'

describe Parser do

  describe '#split input' do
    it 'takes a string and splits it into strings of directions' do
      string = "left, right, left"
      expect(subject.split_input(string)).to eq(['left','right','left'])
    end
  end
end
