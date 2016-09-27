require 'docking_station'

describe DockingStation do
  it 'releases bike when user asks' do
    expect(subject).to respond_to :release_bike
  end
end
