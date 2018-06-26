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
end
