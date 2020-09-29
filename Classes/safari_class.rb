require 'csv'
require 'smarter_csv'



def safari_Catch

data_safari = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

return_to_lodge = false
safari_choice = gets.chomp.to_s.capitalize

if safari_choice == "Catch"

until return_to_lodge == true


random_pokemon = data_safari.sample

    puts "****************************************************************"

    puts "You were walking through the grass and a wild #{random_pokemon[:name]} appeared!!"

    puts "Would you like to try and catch #{random_pokemon[:name]}?"

    puts "****************************************************************"

    puts "Run (Search for another) | catch (Try your luck) | home (Takes back to the lodge)"

safari_pokemon_choice = gets.chomp.to_s.capitalize

if safari_pokemon_choice == "Run" 


elsif safari_pokemon_choice == "Home"
    puts "Welcome back to the pokemon lodge, would you like to leave? Yes (Exit application) ||  No (Catch more Pokemon) || Check (Shows pokemon caught in safari) "
    user_choice = gets.chomp.to_s.capitalize
end


if user_choice == "Check"

   test =  CSV.read("caught_pokemon.csv", headers: true)

   test.each do |pokemon|

    puts "You have caught #{pokemon}!!"

end

        
end


if safari_pokemon_choice == "Catch"
    
    puts "You lock eyes with #{random_pokemon[:name]} and throw your Pokeball"
    
    number = rand(1..10)
    
    if number <= 5
        puts "Fail"
    elsif number >= 6
        
        puts "win"
        CSV.open("caught_pokemon.csv", "ab") do |csv|
            csv << ["#{random_pokemon[:name]}"]
    end

    end
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