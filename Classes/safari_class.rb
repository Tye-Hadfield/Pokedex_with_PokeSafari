require 'csv'
require 'smarter_csv'
require "tty-prompt"


class Safari < PokemonTypes

    def initialize
        @test = []

    end


def safari_Catch

prompt = TTY::Prompt.new
data_safari = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

return_to_lodge = false



puts ".   ._, |_  .,"
puts "`-._\/  .  \ /    |/_"           
puts "    \\  _\, y | \//"
puts "_\_.___\\, \\/ -.\||"
puts "`7-,--.`._||  / / ,"
puts "/'     `-. `./ / |/_.'"
puts "          |    |//"
puts "          |_    /"
puts "          |-   |"
puts "          |   =|"
puts "          |    |"
puts "----------------------------"
puts "░██████╗░█████╗░███████╗░█████╗░██████╗░██╗"
puts "██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║"
puts "╚█████╗░███████║█████╗░░███████║██████╔╝██║"
puts "░╚═══██╗██╔══██║██╔══╝░░██╔══██║██╔══██╗██║"
puts "██████╔╝██║░░██║██║░░░░░██║░░██║██║░░██║██║"
puts "╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝"





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

    menu_safari_choice = {"Run" => 1, "Catch" => 2, "Menu" => 3, "Check" => 4}
    safari_pokemon_choice = prompt.select("Run (Search for another) | catch (Try your luck) | Menu (Takes back to the main menu) | Check (Check caught pokemon", menu_safari_choice )


if safari_pokemon_choice == 1 

    puts "****************************************************************"

    puts "Phew! you got away safely"


elsif safari_pokemon_choice == 4

    puts @test


elsif safari_pokemon_choice == 3
    break
    

end


# if user_choice == 3

# puts @test


# #    show_caught_pokemon =  CSV.read("caught_pokemon.csv", headers: true)

# #    show_caught_pokemon.each do |pokemon|

# #     puts "****************************************************************"
# #     puts "You have caught #{pokemon}"

    
    
# end



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
        
        @test << "#{random_pokemon[:name]}"
        
        p @test
        
        
        # CSV.open("caught_pokemon.csv", "ab") do |csv|
        #     csv << ["#{random_pokemon[:name]}"]
    end
    
   
        end
    end
end


    end
end

