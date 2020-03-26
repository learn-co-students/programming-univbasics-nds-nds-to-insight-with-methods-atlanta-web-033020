$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  count = 0
    
  while director_data[:movies][count] do
    total += director_data[:movies][count][:worldwide_gross]
    count += 1
  end
  
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  count = 0
  
  while nds[count] do
    result[nds[count][:name]] = gross_for_director(nds[count])
    count += 1
  end
  
  result
end
