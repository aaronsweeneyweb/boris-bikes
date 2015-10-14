require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  docking_station = DockingStation.new
  bike = docking_station.release_bike
  describe bike do
    it { is_expected.to respond_to :working?}
  end


end
