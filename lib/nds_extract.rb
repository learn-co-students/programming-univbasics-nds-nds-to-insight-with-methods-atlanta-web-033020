$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_i = 0 
  total = 0
  while movie_i < director_data[:movies].length do
    total += director_data[:movies][movie_i][:worldwide_gross]
    movie_i += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  
  result = {}
  director_i = 0 
  while director_i < nds.length do
    name = nds[director_i][:name]
    result[name] = gross_for_director(nds[director_i])
    director_i += 1 
  end
  result
end
