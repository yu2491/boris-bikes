require 'bb.rb'

describe DockingStation do
  it { DockingStation is_expected.to respond_to('release_bike') } 
end