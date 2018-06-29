require_relative 'zoo_at_capacity'
class Zoo


  def initialize(name, season_opening_date, season_closing_date)
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @employees = []
    @cages = [].tap do |cages|
            10.times do
              cages << Cage.new
            end
          end
  end

  def cages
    @cages
  end

  def add_employee(employee)
    @employees << employee
  end

  def employees
    @employees
  end

  def open?(date)
    date >= @season_opening_date && date <= @season_closing_date
  end


  def add_animal(animal)
    empty_cage = @cages.find{|cage| cage.empty?}
    if !empty_cage.nil?
      empty_cage.animal = animal
    else
      raise ZooAtCapacity
    end
  end


end
