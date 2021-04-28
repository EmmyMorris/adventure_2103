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
  describe '#trails' do
    it 'has no trails_shorter_than' do
      park1 = Park.new('Capitol Reef')
      expect(park1.trails).to eq([])
    end
    it 'adds trails' do
      park1 = Park.new('Capitol Reef')
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
      park1.add_trail(trail1)
      park1.add_trail(trail2)
      expect(park1.trails).to eq([trail1, trail2])
    end
    it 'adds trails to another park' do
      park2 = Park.new('Bryce Canyon')
      trail3 = Trail.new({name: 'Tower Bridge', length: '3.0 miles', level: :moderate})
      park2.add_trail(trail3)
      expect(park2.trails).to eq([trail3])
    end
  end
end
