require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases a working bike' do
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'can see a docked bike' do
    bike1 = Bike.new
    subject.dock_bike(bike1)
    expect(subject.bike).to eq bike1
  end

end
