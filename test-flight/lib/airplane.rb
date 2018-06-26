class Airplane
  attr_reader :type, :wing_loading, :horsepower
  attr_accessor :engine, :flying

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @engine = false
    @flying = false
  end

  def start
    if @engine == false
      @engine = true
      "airplane started"
    else
      "airplane already started"
    end
  end

  def land
    if @engine == false
      "airplane not started, please start"
    elsif @engine == true && @flying == false
      "airplane already on the ground"
    else
      "airplane landed"
    end
  end

  def takeoff
    if @engine == false
      "airplane not started, please start"
    else
      @flying = true
      "airplane launched"
    end
  end

end
