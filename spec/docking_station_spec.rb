require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.docks_bike(bike)
  bike1 = docking_station.release_bike

  describe bike1 do
    it { is_expected.to respond_to :working?}
  end

  it { is_expected.to respond_to(:docks_bike).with(1).argument }

  docking_station.docks_bike(bike)
  describe docking_station.bikes do
    it { is_expected.to include(bike)}
  end

  it "should raise an error when there are no more bikes available" do
    expect {subject.release_bike}.to raise_error("No more bikes available")
  end

  it "should raise an error when the docking station is full" do
    b = Bike.new
    subject.docks_bike(b)
    expect {21.times{subject.docks_bike(Bike.new)}}.to raise_error("Docking Station is full")
  end



end
