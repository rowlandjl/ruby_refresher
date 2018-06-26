class Airplane
  attr_reader :type

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @engine = "off"
  end

  def start
    if @engine == "off"
      @engine = "on"
      "airplane started"
    elsif @engine == "on"
      "airplane already started"
    end
  end

  def takeoff
    if @engine == "off"
      "airplane not started, please start"
    elsif @engine == "on"
      "airplane launched"
    end
  end

end
