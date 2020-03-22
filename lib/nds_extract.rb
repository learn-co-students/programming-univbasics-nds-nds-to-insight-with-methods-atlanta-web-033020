 $LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
def gross_for_director(director_data)
  row_index = 0
  dir_money = 0
  movies = director_data[:movies]
   while row_index < movies.length do
     dir_money += movies[row_index][:worldwide_gross]
     row_index += 1
   end
   dir_money
end



def directors_totals(nds)
 director_index = 0 
 total = {}
   while director_index < nds.length do 
     name =  nds[director_index][:name]
     total[name] = gross_for_director(nds[director_index])
    director_index += 1
   #binding.pry 
end  
total
end