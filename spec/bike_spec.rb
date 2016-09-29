require 'docking_station'

describe Bike do
  it 'checks if the bike is working' do
    expect(subject).to respond_to :broken
  end

  it 'can be reported as broken when docked' do
    expect(subject.report_broken).to eq true
  end

  it 'is working?' do
    expect(Bike.new.broken).to eq false
    bike = Bike.new
    bike.report_broken
    expect(bike.broken).to eq true
  end
end
