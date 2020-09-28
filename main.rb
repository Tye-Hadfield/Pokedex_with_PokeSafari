require_relative 'Classes/Types_chart.rb'
require_relative 'Classes/search_class.rb'

#*****Main******


puts "****************************************************************"

puts "Welcome to the Pokedex and Pokemon Safari"

puts "****************************************************************"

puts "How would you like to search the Pokedex, Name or Pokedex number?"

how_to_search = gets.chomp.to_s.capitalize

if how_to_search == "Pokedex number" || how_to_search == "Number"
    puts "****************************************************************"
    how_to_search = PokemonSearch.new
    how_to_search.pokemonTestPokeDexNumer

elsif how_to_search == "Name"
    puts "****************************************************************"
    how_to_search = PokemonSearch.new
    how_to_search.pokemonTestPokemonName

end
