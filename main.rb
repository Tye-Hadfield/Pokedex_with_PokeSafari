require 'csv'
require 'smarter_csv'



# class PokeDex

#     def Initialize
#         @pokemondb = pokemondb

#     end

#*******Pokedex searching by Pokedex number function***********

    def pokemonTestPokeDexNumer
    
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

        puts "Would you like to search another Pokemon? (Yes or No)"
        
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



#*******Pokedex searching by name function*********

    def pokemonTestPokemonName
    
        data = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

        user_answer = true

        while user_answer == true

        puts "What is the Name of the Pokemon you are searching for?"

        user_choice = gets.chomp.to_s.capitalize

        select_pokemon = data.select {|hash| hash[:name] == user_choice }[0]
       
        #Here we are finding if there is one or two types on the Pokemon
        if select_pokemon.length == 12
            select_pokemon_type = select_pokemon.fetch_values(:type_1)
        else
            select_pokemon_type = select_pokemon.fetch_values(:type_1)
            select_pokemon_type_2= select_pokemon.fetch_values(:type_2)
        end
        


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
        


        # types_test = [,"poison","fire","flying","water","bug","poison","normal","electric","ground","fairy","psychic","fighting","rock","steel","ice","ghost","dragon"]


        #This is the types and what their Strength and weakness are (Move to class when got time)
        grass = {
            attack_super_effective: "Grass moves are super-effective against : Water, Ground and Rock",
            attack_not_super_effective: "Grass moves are not very effective against : Fire, Grass, Poision, Flying, Bug, Dragon, Steel",
            defence_not_very_effective: "These types are not very Effective against grass Pokemon : Water, Electric, Grass, Ground",
            defence_not_very_effective: "These types are super-effective against grass Pokemon : Fire, Ice, Poison, Flying, Bug "}

        p grass[:attack_not_super_effective]

        # if select_pokemon.length == 12
        #     select_pokemon_type.each do |types|
        #         puts "#{types}"
        #     end
        # else

        #     select_pokemon_type.each do |types|
        #         puts "#{types}"
        #     end            

        #     select_pokemon_type_2.each do |types|
        #         puts "#{types}"
        #     end
        # end

        # p select_pokemon_type






        puts "****************************************************************"

        puts "Would you like to search another Pokemon?(Yes or No)"
        
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


#*****Main******

puts "****************************************************************"

puts "Welcome to the Pokedex and Pokemon Safari"

puts "****************************************************************"

puts "How would you like to search the Pokedex, Name or Pokedex number?"

how_to_search = gets.chomp.to_s.capitalize

if how_to_search == "Pokedex number"
    puts "****************************************************************"
    pokemonTestPokeDexNumer
elsif how_to_search == "Name"
    puts "****************************************************************"
    pokemonTestPokemonName
end
