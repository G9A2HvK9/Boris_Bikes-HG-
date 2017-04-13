require "docking_station"


describe DockingStation do

  it { should respond_to(:release_bike) }

  it "should release working bike" do
    if @bike != nil
      expect(subject.release_bike).to be_working
    end
  end

  it "should raise an error" do
    if @bike == nil
      expect {subject.release_bike}.to raise_error("No Bikes!")
    end
  end

  it "should raise an error if station is full" do
    if @bike
      expect {subject.dock(bike)}.to raise_error("Station is full")
    end
  end

  it "should accept a bike if station is not full" do
    unless @bike
      expect {subject.to respond_to(:dock).with(1).argument}
    end
  end

end
