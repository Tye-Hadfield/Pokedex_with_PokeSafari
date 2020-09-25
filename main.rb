require 'csv'
require 'smarter_csv'



# class PokeDex

#     def Initialize
#         @pokemondb = pokemondb

#     end


    def callPokemonTest
    
        data = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

        user_answer = true

        while user_answer == true

        puts "Choose number between 1-151"

        user_choice = gets.chomp.to_i

        select_pokemon = data.select {|hash| hash[:pokedexnumber] == user_choice }[0]

        puts "****************************************************************"

        puts "Pokedex Number - #{select_pokemon[:pokedexnumber]}"
        puts "Name - #{select_pokemon[:name]}"
        puts "type(s) - #{select_pokemon[:type_1]} #{select_pokemon[:type_2]}"
        puts "HP stats - #{select_pokemon[:hp]}"
        puts "Attack stats - #{select_pokemon[:attack]}"
        puts "Defense stats - #{select_pokemon[:defense]}"
        puts "SP_Atk stats - #{select_pokemon[:sp_atk]}"
        puts "SP_Def stats - #{select_pokemon[:sp_def]}"
        puts "Speed stats - #{select_pokemon[:speed]}"
        puts "Generation - #{select_pokemon[:generation]}"

        puts "****************************************************************"

        puts "Would you like to search another Pokemon?"
        
         run_again = gets.chomp.to_s.capitalize
        

            if run_again == "No"
               user_answer = false
                puts "****************************************************************"
                puts "Thank you for using the Pokedex!!"
            elsif
                run_again == "Yes"
                user_answer = true
                puts "****************************************************************"
            end
        end
    end

callPokemonTest
