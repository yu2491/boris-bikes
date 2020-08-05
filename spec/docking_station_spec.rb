require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to('release_bike') }

  it 'released bike is working?' do
  	bike = subject.release_bike
  	expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to('bike') }
  
end
