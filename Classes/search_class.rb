require 'csv'
require 'smarter_csv'
require 'tty-prompt'
require_relative 'Types_chart.rb'



#*******Pokedex searching by Pokedex number function***********


class PokemonSearch 

    @@pokemon_types = populate_types

    
    
    def initialize
    end
    
    
    
def pokemonTestPokeDexNumer
        
    grass = @@pokemon_types[0]
    poison = @@pokemon_types[1]
    dragon = @@pokemon_types[2]
    ghost = @@pokemon_types[3]
    ice = @@pokemon_types[4]
    steel = @@pokemon_types[5]
    rock = @@pokemon_types[6]
    fighting = @@pokemon_types[7]
    psychic = @@pokemon_types[8]
    fairy = @@pokemon_types[9]
    ground = @@pokemon_types[10]
    bug = @@pokemon_types[11]
    water = @@pokemon_types[12]
    flying = @@pokemon_types[13]
    fire = @@pokemon_types[14]
    normal = @@pokemon_types[15]

        
    prompt = TTY::Prompt.new
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
    puts "SP_Atk stats - #{select_pokemon[:spatk]}"
    puts "SP_Def stats - #{select_pokemon[:spdef]}"
    puts "Speed stats - #{select_pokemon[:speed]}"
    puts "Generation - #{select_pokemon[:generation]}"
    
    
    puts "****************************************************************"
    
    pokemon_type1 = select_pokemon[:type_1]
    pokemon_type2 = select_pokemon[:type_2]

    normal.output_all
   

    p pokemon_type1
    p pokemon_type2


    choices = {"Yes" => 1, "No" => 2}

    run_again = prompt.select("Would you like to search another Pokemon? (Yes or No)", choices)
    
    
    puts "****************************************************************"

        if run_again == 2
           user_answer = false
            puts "****************************************************************"
            puts "Thank you for using the Pokedex!!"
        elsif
            run_again == 1
            user_answer = true
            puts "****************************************************************"
        end
    end
end




#*******Pokedex searching by name function*********

def pokemonTestPokemonName
    prompt = TTY::Prompt.new
    data = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

    user_answer = true

    while user_answer == true

    puts "What is the Name of the Pokemon you are searching for?"

    user_choice = gets.chomp.to_s.capitalize

    select_pokemon = data.select {|hash| hash[:name] == user_choice }[0]

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
        
     choices = {"Yes" => 1, "No" => 2}

     run_again = prompt.select("Would you like to search another Pokemon? (Yes or No)", choices)
     
     
 
         if run_again == 2
            user_answer = false
             puts "****************************************************************"
             puts "Thank you for using the Pokedex!!"
         elsif
             run_again == 1
             user_answer = true
             puts "****************************************************************"
            end
        end
    end
end


