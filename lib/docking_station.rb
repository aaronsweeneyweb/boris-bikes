require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end
 
  def release_bike
    fail 'No bikes available' unless @bikes.length > 0
    Bike.new
  end

  def dock_bike(bike)
    fail 'Docking Station is full' if @bikes.length >= 20
    @bikes <<  bike
  end

end
