require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  docking_station = DockingStation.new
  bike = docking_station.release_bike

  describe bike do
    it { is_expected.to respond_to :working?}
  end

  it { is_expected.to respond_to(:docks_bike).with(1).argument }

  docking_station.docks_bike(bike)
  describe docking_station.bike do
    it { is_expected.to include(bike)}
  end

end
