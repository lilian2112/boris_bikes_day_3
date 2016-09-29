require 'docking_station'

describe Bike do
  it 'checks if the bike is working' do
    expect(subject).to respond_to :broken
  end

  it 'can be reported as broken when docked' do
    expect(subject.report_broken).to eq true
  end
end
