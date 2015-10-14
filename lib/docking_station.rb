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
    @bike << bike
  end

  def check
    @bike.last
  end
end
