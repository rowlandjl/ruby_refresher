def plus_two(number)
  number + 2
end

def subtract_or_multiply_by_two(number)
  if number < 0
    number - 2
  else
    number * 2
  end
end

def repeat_last_word(word)
  split_word = word.split(" ")
  split_word << split_word[-1]
  split_word.join(" ").to_str
end

def return_value_of_type(symbol)
  if symbol.kind_of?(String) && symbol.include?(":string")
    "this is a string!"
  elsif symbol == :fixnum
    10
  else
    "input does not match any Ruby class"
  end
end

def add_five_and_ten(array)
  array << 5 << 10
end
