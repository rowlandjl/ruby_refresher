class ZooAtCapacity < StandardError
  def message
    "Your zoo is already at capacity!"
  end 
end
