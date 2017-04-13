class DockingStation
attr_reader :bike

  def release_bike
    if @bike == nil #Guard condition if no bikes present
      raise RuntimeError, "No Bikes!"
    else
      Bike.new
    end
  end

  def dock(bike)
    unless @bike
      @bike = bike
    else
      fail "Station is full"
    end
  end

end
