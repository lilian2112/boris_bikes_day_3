require 'docking_station'

describe DockingStation do
    subject(:dockingstation) {described_class.new()}

    it {is_expected.to respond_to :release_bike}

    it 'releases previously docked bike' do
      bike = double("bike", :broken => false)
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it "raise an error if there is no bikes" do
      expect { subject.release_bike }.to raise_error('sorry no bikes available')
    end
    it 'does not release broken bikes' do
      bike = double("bike", :broken => true, :report_broken => true)
      bike.report_broken
      subject.dock_bike(bike)
      expect { subject.release_bike }.to raise_error("This bike is broken")
    end

    it {is_expected.to respond_to(:dock_bike).with(1).argument}
    it 'store the bike?' do
      bike = double(:bike)
      expect(subject.dock_bike(bike)).to eq bike
    end

    it "accepts bikes including broken ones" do
      bike = double("bike", :report_broken => true)
      bike.report_broken
      expect(subject.dock_bike(bike)).to eq bike
    end

    it 'raise an error if the station has 20 bikes' do
      subject.capacity.times { subject.dock_bike(double(:bike)) }
      expect { subject.dock_bike(double(:bike))}.to raise_error('sorry this station is full')
    end

    it "should specify capacity for dockingstation instance" do
    station = DockingStation.new(26)
    expect(station.capacity).to eq 26
   end

    it {is_expected.to respond_to(:bikes)}
    it 'shows number of bikes docked at station' do
      2.times {subject.dock_bike(double(:bike))}
      expect(subject.bikes.length).to eq 2
    end



end
