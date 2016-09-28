class DockingStation

  attr_reader :bike

  def release_bike
    raise "sorry no bikes available" unless bike
    @bike
  end

  def dock_bike(bike)
    raise "sorry this station is full" unless ()
    @bike = bike
  end
end

class Bike
  def working?
    true
  end
end
