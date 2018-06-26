require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150)}
  describe "#initialization" do
    it "returns the planes type" do
      expect(my_plane.type).to eq("cesna")
    end

    it "returns the planes wing loading" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "returns the planes horsepower" do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    context "if the plane has not been started" do
      it "returns the plane has been started" do
        expect(my_plane.start).to eq("airplane started")
      end
    end

    context "if the plane was already started" do
      it "returns the plane was already started" do
        my_plane.engine = true
        expect(my_plane.start).to eq("airplane already started")
      end
    end

  end

  describe "#land" do
    context "if plane has not been started" do
      it "returns the plane has not been started" do
        my_plane.engine = false
        expect(my_plane.land).to eq("airplane not started, please start")
      end
    end

    context "if plane has been started but hasn't taken off" do
      it "returns the plane has not taken off" do
        my_plane.engine = true
        my_plane.flying = false
        expect(my_plane.land).to eq("airplane already on the ground")
      end
    end

    context "if the plane is already in the air" do
      it "returns the plane has landed" do
        my_plane.engine = true
        my_plane.flying = true
        expect(my_plane.land).to eq("airplane landed")
      end
    end
  end

  describe "#takeoff" do
    context "if airplane not started" do
      it "returns the plane has not been started" do
        my_plane.engine = false
        expect(my_plane.takeoff).to eq("airplane not started, please start")
      end
    end

    context "if airplane was already started" do
      it "returns the plane launched" do
        my_plane.engine = true
        expect(my_plane.takeoff).to eq("airplane launched")
      end
    end
  end
end
