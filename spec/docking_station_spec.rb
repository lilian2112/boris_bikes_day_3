require 'docking_station'

describe DockingStation do
    it {is_expected.to respond_to :release_bike}
    it 'releases previously docked bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it "raise an error if there is no bikes" do
      expect { subject.release_bike }.to raise_error('sorry no bikes available')
    end
    it 'is working?' do
      expect(Bike.new.working?).to eq true
    end
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
