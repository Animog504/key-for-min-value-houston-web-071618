# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  my_minimum = nil
  my_return = nil
    name_hash.each do |name, value|
    if(my_minimum == nil) #first iteration sets a baseline assuming there is something there.
      my_minimum = value
      my_return = name
    elsif(value < my_minimum)
      my_minimum = value
      my_return = name
    else
      # i.e. value >= my_minimum DO NOTHING (but what if two keys had the same value?)
    end
  end
  my_return
end