require_relative "../../lib/airplane"

describe Airplane do
  describe "#initialization" do
    it "has a type" do
      my_plane = Airplane.new("cesna", 10, 150)

      expect(my_plane.type).to eq("cesna")
    end
  end

  describe "#start" do
    it "should turn on the engine if it is not already running" do
      my_plane = Airplane.new("cesna", 10, 150)

      expect(my_plane.start).to eq("airplane started")
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#land" do
  end

  describe "#takeoff" do
    it "should change the state of the plane to flying" do
      my_plane = Airplane.new("cesna", 10, 150)

      expect(my_plane.takeoff).to eq("airplane not started, please start")

      my_plane.start
      expect(my_plane.takeoff).to eq("airplane launched")
    end
  end
end
