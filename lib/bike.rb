class Bike

  attr_reader :broken
  def working?
    true
  end

  def report_broken?
    @broken = true
  end
end