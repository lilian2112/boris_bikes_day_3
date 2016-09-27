require 'docking_station'

describe Bike do
  it 'checks if the bike is working' do
    expect(subject).to respond_to :working?
  end
end
