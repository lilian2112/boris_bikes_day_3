class Bike
  def initialize
    @broken = false
  end

  attr_reader :broken

  def report_broken
    @broken = true
  end
end
