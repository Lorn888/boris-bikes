require 'docking_station'
require 'bike'

describe DockingStation do
  docking_station = DockingStation.new

  it 'should respond to release_bike' do
    expect(docking_station).to respond_to :release_bike
  end  
  
  describe :release_bike do  
  
    it 'should return an instance of Bike' do
      released_bike = docking_station.release_bike
      expect(released_bike).to be_a Bike
    end  

    it 'should return a working instance of Bike' do
      released_bike = docking_station.release_bike
      expect(released_bike).to be_working
    end
  end
end