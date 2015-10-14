require_relative 'bike'
class DockingStation
  attr_reader :bike
  def initialize
    @bike = []
  end

  def release_bike
    fail("No more bikes available") unless @bike.length > 0
    @bike.pop
  end

  def docks_bike(bike)
    fail("Docking Station is full") unless @bike.length < 1
    @bike << bike
  end

  def check
    @bike.last
  end
end
