class DockingStation
  def initialize
  @bikes = []
  end
  attr_reader :bikes
  def release_bike
    raise "sorry no bikes available" unless @bikes.length >= 1
    @bikes.pop
  end
  def dock_bike(bike)
    raise "sorry this station is full" if @bikes.length >= 20
    @bikes << bike
    bike = @bikes.last
  end
end
class Bike
  def working?
    true
  end
end
