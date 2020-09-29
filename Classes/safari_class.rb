require 'smarter_csv'



def safari_Catch

data = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

return_to_lodge = false
safari_choice = gets.chomp.to_s.capitalize

if safari_choice == "Catch"

until return_to_lodge == true


random_pokemon = data.sample[:name]

    puts "****************************************************************"

    puts "You were walking through the grass and a wild #{random_pokemon} appeared!!"

    puts "Would you like to try and catch #{random_pokemon}?"

    puts "****************************************************************"

    puts "Run (Search for another) | catch (Try your luck) | home (Takes back to the lodge)"

safari_pokemon_choice = gets.chomp.to_s.capitalize


    if safari_pokemon_choice == "Catch"

        puts "You lock eyes with #{random_pokemon} and throw your Pokeball"

        number = rand(1..10)
        puts number 
        
        if number <= 5
            puts "Fail"
        elsif number >= 6
            puts "win"

        end
    end

    
    if safari_pokemon_choice == "Run" 
    end

    if safari_pokemon_choice == "Home"
    puts "Welcome back to the pokemon lodge, would you like to leave? Yes (Exit application) ||  No (Catch more Pokemon) "
    user_choice = gets.chomp.to_s.capitalize
    end

    if user_choice == "No"
        return_to_lodge = false

    elsif user_choice == "Yes"
        return_to_lodge = true

        end
    end
        
        
    end
end

safari_Catch