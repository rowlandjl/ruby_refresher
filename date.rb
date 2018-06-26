class Date
  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day
  end

  def self.parse(iso8601_string)
    tokens = iso8601_string.split("-")
    year = tokens[0].to_i
    month = tokens[1].to_i
    day = tokens[2].to_i

    Date.new(year, month, day)
  end
end
