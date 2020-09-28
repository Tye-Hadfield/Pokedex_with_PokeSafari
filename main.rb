require_relative 'Classes/Types_chart.rb'
require 'csv'
require 'smarter_csv'



#*****Main******


puts "****************************************************************"

puts "Welcome to the Pokedex and Pokemon Safari"

puts "****************************************************************"

puts "How would you like to search the Pokedex, Name or Pokedex number?"

how_to_search = gets.chomp.to_s.capitalize

if how_to_search == "Pokedex number"
    puts "****************************************************************"
    pokemonTestPokeDexNumer
elsif how_to_search == "Number"
    puts "****************************************************************"
    pokemonTestPokeDexNumer
elsif how_to_search == "Name"
    puts "****************************************************************"
    pokemonTestPokemonName
end
