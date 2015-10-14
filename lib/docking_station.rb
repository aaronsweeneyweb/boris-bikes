require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail("No more bikes available") unless @bikes.length > 0
    @bikes.pop
  end

  def docks_bike(bike)
    fail("Docking Station is full") unless @bikes.length <= 20
    @bikes << bike
  end

  def check
    @bikes.last
  end
end
