require_relative 'Classes/Types_chart.rb'
require_relative 'Classes/search_class.rb'
require_relative 'Classes/safari_class.rb'
require 'tty-prompt'

#*****Main******

def main


prompt = TTY::Prompt.new


puts "****************************************************************"

puts "Welcome to the Pokedex and Pokemon Safari"

puts "****************************************************************"

choices = {"PokeDex " => 1, "Safari" => 2, "Help" => 3}

menu_choice = prompt.select("Please choose an option to begin!", choices)

puts "****************************************************************"

if  menu_choice == 2
   
   poke_safari = Safari.new
   poke_safari.safari_Catch
end

if menu_choice == 1

puts "****************************************************************"
 


end

pokedex_choices = {"PokeDex Number " => 1, "Pokedex Name" => 2}

how_to_search = prompt.select("How would you like to search the Pokedex, Name or Pokedex number?", pokedex_choices)

if how_to_search == 1

    puts "****************************************************************"
    how_to_search = PokemonSearch.new
    how_to_search.pokemonTestPokeDexNumer

elsif how_to_search == 2
    puts "****************************************************************"
    how_to_search = PokemonSearch.new
    how_to_search.pokemonTestPokemonName

end

end

main