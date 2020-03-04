$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

  # Refactor into gross_for_director
          dire_gross = 0
          director_x = 0
          while director_x < director_data[:movies].length do
            dire_gross += director_data[:movies][director_x][:worldwide_gross]
                        # Why don't I need a row parameter to dig into this NDS
            director_x += 1
          end
  # End of refactor gross_for_director

          dire_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
          row = 0
          while row < nds.length do
            total = 0
            inner_len = nds[row]

            total +=  gross_for_director(inner_len)
            result[inner_len[:name]] = total

            row += 1
          end

  nil
  result
end
