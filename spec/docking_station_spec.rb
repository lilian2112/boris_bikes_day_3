describe 'DockingStation' do
  it 'releases bike when user asks' do
    expect(release_bike(bike)).to eq 'Bike released'
  end
end
