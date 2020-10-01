require 'csv'
require 'smarter_csv'
require "tty-prompt"


class Safari < PokemonTypes

    def initialize

    end


def safari_Catch

prompt = TTY::Prompt.new
data_safari = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

return_to_lodge = false


choices = {"Start Catching!!" => 1}
safari_choice = prompt.select("Welcome to the Pokemon Safari lodge!!", choices)


if safari_choice == 1

until return_to_lodge == true


random_pokemon = data_safari.sample
    # system "clear"

    puts "****************************************************************"

    puts "You were walking through the grass and a wild #{random_pokemon[:name]} appeared!!"

    puts "****************************************************************"

    puts "Would you like to try and catch #{random_pokemon[:name]}?"

    puts "****************************************************************"

    menu_safari_choice = {"Run" => 1, "Catch" => 2, "Home" => 3}
    safari_pokemon_choice = prompt.select("Run (Search for another) | catch (Try your luck) | home (Takes back to the lodge)", menu_safari_choice )


if safari_pokemon_choice == 1 

    puts "****************************************************************"

    puts "Phew! you got away safely"

elsif safari_pokemon_choice == 3
    
    menu_lodge_choice = {"Yes" => 1, "No" => 2, "Check" => 3}
    user_choice = prompt.select("Welcome back to the pokemon lodge, would you like to leave? Yes (Return to main menu) ||  No (Catch more Pokemon) || Check (Shows pokemon caught in safari) ", menu_lodge_choice )
end


if user_choice == 3

   show_caught_pokemon =  CSV.read("caught_pokemon.csv", headers: true)

   show_caught_pokemon.each do |pokemon|

    puts "****************************************************************"
    puts "You have caught #{pokemon}"

    
    
end

view_pokemon_menu = {"Yes" => 1, "No" => 2}
view_user_choice = prompt.select("Would you like to go back to catching pokemon (Yes) or return to the main menu (No)? ", view_pokemon_menu )

if view_user_choice == 2
    break
end
        
end


if safari_pokemon_choice == 2

    puts "****************************************************************"
    puts "You lock eyes with #{random_pokemon[:name]} and throw your Pokeball"
    
    number = rand(1..10)
    
    if number <= 5
        puts "****************************************************************"
        puts "Oh no! You missed and #{random_pokemon[:name]} got away"

    elsif number >= 6
        puts "****************************************************************"
        puts "All right! You caught #{random_pokemon[:name]}"
        CSV.open("caught_pokemon.csv", "ab") do |csv|
            csv << ["#{random_pokemon[:name]}"]
    end

    end
end


if user_choice == 2
    return_to_lodge = false

elsif user_choice == 1
    return_to_lodge = true

    end
end
        
        end
    end
end

