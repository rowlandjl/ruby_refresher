module PartyGoer

  class PersonalizedHavocError < StandardError
  end

  def initialize
    @drink_count = 0
  end

  def drink
    @drink_count += 1

    if @drink_count < 4
      true
    else
      false
    end

  end

  def sing
    "!!!!!!"
  end

  def cause_havoc
    raise PersonalizedHavocError.new("You should define this yourself!")
  end

  def invited?
    true
  end

end
