require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to('bike') }

  it 'releases working bikes?' do
  	bike = Bike.new
  	expect(bike).to be_working
  end

  describe '#release_bike' do
    it { is_expected.to respond_to('release_bike') }

  	it 'releases a bike' do
  		bike = Bike.new
  		subject.dock(bike)
  		expect(subject.release_bike).to eq(bike)
  	end

    it 'expect an error if docking station empty' do
    	expect { subject.release_bike }.to raise_error('No bikes available')
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq([bike])
    end

    it 'expect an error if docking station full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

end
