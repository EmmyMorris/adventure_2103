require './lib/park'
require './lib/trail'

RSpec.describe Park do
  describe '#exists' do
    it 'exists' do
      park1 = Park.new('Capitol Reef')
      expect(park1).to be_an_instance_of(Park)
    end

    it 'has attributes' do
      park1 = Park.new('Capitol Reef')
      expect(park1.name).to eq('Capitol Reef')
    end
  end
end
