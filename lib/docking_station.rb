require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    Bike.new
  end

  def dock_bike(bike)
    fail 'Docking Station is full' if full?
    @bikes <<  bike
  end

  private
  def full?
    @bikes.length >= 20 #evaluates to true/false
  end

  def empty?
    @bikes.length == 0
  end

end
