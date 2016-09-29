require 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize(num = DEFAULT_CAPACITY)
  @bikes = []
  @capacity = num
  end

  attr_reader :bikes, :capacity

  def release_bike
    raise "sorry no bikes available" if empty?
    bike = @bikes.pop
    raise "This bike is broken" if bike.broken == true
    bike
  end
  def dock_bike(bike)
    raise "sorry this station is full" if full?
    @bikes << bike
    bike = @bikes.last
  end

  private
  def full?
    @bikes.length >= @capacity
  end
  def empty?
    @bikes.empty?
  end

end
