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
end
