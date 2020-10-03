require_relative 'Classes/Types_chart.rb'
require_relative 'Classes/search_class.rb'
require_relative 'Classes/safari_class.rb'
require_relative 'Classes/Types_chart.rb'
require 'tty-prompt'
require 'colorize'

#*****Main******


def mainMenuLoop

prompt = TTY::Prompt.new

exit_choice = false

until exit_choice == true


puts "****************************************************************"

 
puts "██████╗░░█████╗░██╗░░██╗███████╗██████╗░███████╗██╗░░██╗  ░█████╗░███╗░░██╗██████╗░".colorize(:blue)
puts "██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗██╔════╝╚██╗██╔╝  ██╔══██╗████╗░██║██╔══██╗".colorize(:blue)
puts "██████╔╝██║░░██║█████═╝░█████╗░░██║░░██║█████╗░░░╚███╔╝░  ███████║██╔██╗██║██║░░██║".colorize(:blue)
puts "██╔═══╝░██║░░██║██╔═██╗░██╔══╝░░██║░░██║██╔══╝░░░██╔██╗░  ██╔══██║██║╚████║██║░░██║".colorize(:blue)
puts "██║░░░░░╚█████╔╝██║░╚██╗███████╗██████╔╝███████╗██╔╝╚██╗  ██║░░██║██║░╚███║██████╔╝".colorize(:blue)
puts "╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░╚══════╝╚═╝░░╚═╝  ╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░".colorize(:blue)

puts "░██████╗░█████╗░███████╗░█████╗░██████╗░██╗".colorize(:blue)
puts "██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║".colorize(:blue)
puts "╚█████╗░███████║█████╗░░███████║██████╔╝██║".colorize(:blue)
puts "░╚═══██╗██╔══██║██╔══╝░░██╔══██║██╔══██╗██║".colorize(:blue)
puts "██████╔╝██║░░██║██║░░░░░██║░░██║██║░░██║██║".colorize(:blue)
puts "╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝".colorize(:blue)

choices = {"PokeDex".colorize(:yellow) => 1, "Safari".colorize(:blue) => 2, "Help".colorize(:green) => 3, "Exit".colorize(:red) => 4}

menu_choice = prompt.select("Please choose an option to begin!".colorize(:red), choices)

puts "****************************************************************"


if menu_choice == 4
    system "clear"
    exit_choice = true

end


if  menu_choice == 2
        system "clear"
        poke_safari = Safari.new
        poke_safari.safari_Catch
end


if menu_choice == 1

pokedex_choices = {"PokeDex Number".colorize(:red) => 1, "Pokedex Name".colorize(:blue) => 2}

how_to_search = prompt.select("How would you like to search the Pokedex, Name or Pokedex number?".colorize(:yellow), pokedex_choices)

if how_to_search == 1
    system "clear"
    puts "****************************************************************"
    how_to_search = PokemonSearch.new
    how_to_search.pokemonTestPokeDexNumer

    
elsif how_to_search == 2
    system "clear"
    puts "****************************************************************"
    how_to_search = PokemonSearch.new
    how_to_search.pokemonTestPokemonName
    
    end
end

    end
end

mainMenuLoop

 

