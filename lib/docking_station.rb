require_relative 'bike'
class DockingStation
  attr_reader :bike
  def initialize
    @bike = []
  end

  def release_bike
    Bike.new
  end

  def docks_bike(bike)
    @bike << bike
  end

  def check
    @bike.last
  end
end