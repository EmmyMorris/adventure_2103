require './lib/hiker'
require './lib/park'
require './lib/trail'

RSpec.describe  do
  describe '#exists' do
    it 'exists' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker).to be_an_instance_of(Hiker)
    end

    it 'has attributes' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.name).to eq('Dora')
      expect(hiker.experience_level).to eq(:moderate)
    end
  end
  describe '#pack' do
    it 'has no snacks' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.snacks).to eq({})
    end

    it 'packs snacks' do
      hiker = Hiker.new('Dora', :moderate)
      hiker.pack('water', 1)
      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)
      expect(hiker.snacks).to eq({"water" => 2, "trail mix" => 3})
    end
  end
end
