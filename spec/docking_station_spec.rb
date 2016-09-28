require 'docking_station'

describe DockingStation do
    it {is_expected.to respond_to :release_bike}
    it 'releases the bike' do
      expect(DockingStation.new.release_bike).to be_instance_of Bike
    end
    it 'is working?' do
      expect(Bike.new.working?).to eq true
    end
    #it 'return bike to the docking station' do
      #expect(DockingStation.new.dock_bike(bike)).to be_instance_of Bike
    #end
    it {is_expected.to respond_to(:dock_bike).with(1).argument}
    it 'store the bike?' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end
    it {is_expected.to respond_to(:bike)}
    it 'shows bike docked at station' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
end
