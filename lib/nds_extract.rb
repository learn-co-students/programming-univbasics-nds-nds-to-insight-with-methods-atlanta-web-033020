$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  total = 0
  while i < director_data[:movies].length do
  total += director_data[:movies][i][:worldwide_gross]
  i += 1
  end
total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
  i = 0
  while i < nds.size do
    director = nds[i]
    result[director[:name]] = gross_for_director(director)
    i += 1
  end
  result
end
