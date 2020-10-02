require 'csv'
require 'smarter_csv'
require 'tty-prompt'
require 'tty-table'
require_relative 'Types_chart.rb'



#*******Pokedex searching by Pokedex number function***********


class PokemonSearch 
        
    def initialize
    end
    
    
    
def pokemonTestPokeDexNumer

    
    prompt = TTY::Prompt.new
    data = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})
    types_data = SmarterCSV.process('test.csv',{header_transformations:[:none]})
    
    user_answer = true
    
    while user_answer == true
        
        puts "Choose number between 1-151"
        
        user_choice = gets.chomp.to_i
        
        select_pokemon = data.select {|hash| hash[:pokedexnumber] == user_choice }[0]
        
    table = TTY::Table.new(["Pokedex Number","Name","type(s)","HP stats","Attack stats","Defense stats","SP_Atk stats","SP_Def stats","Speed stats","Generation"], [["#{select_pokemon[:pokedexnumber]}", "#{select_pokemon[:name]}", "#{select_pokemon[:type_1]} #{select_pokemon[:type_2]}","#{select_pokemon[:hp]}","#{select_pokemon[:attack]}","#{select_pokemon[:defense]}","#{select_pokemon[:spatk]}","#{select_pokemon[:spdef]}","#{select_pokemon[:speed]}","#{select_pokemon[:generation]}"]])
    puts table.render(:ascii, alignment: [:center],padding: [0.5,0.5,0.5,0.5])


    type_of_pokemon = select_pokemon[:type_1]
    type_of_pokemon2 = select_pokemon[:type_2]
    
    pokemon_type1 = types_data.select {|hash| hash[:name] == type_of_pokemon }[0]
    pokemon_type2 = types_data.select {|hash| hash[:name] == type_of_pokemon2 }[0]



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


    table = TTY::Table.new(["Pokedex Number","Name","type(s)","HP stats","Attack stats","Defense stats","SP_Atk stats","SP_Def stats","Speed stats","Generation"], [["#{select_pokemon[:pokedexnumber]}", "#{select_pokemon[:name]}", "#{select_pokemon[:type_1]} #{select_pokemon[:type_2]}","#{select_pokemon[:hp]}","#{select_pokemon[:attack]}","#{select_pokemon[:defense]}","#{select_pokemon[:spatk]}","#{select_pokemon[:spdef]}","#{select_pokemon[:speed]}","#{select_pokemon[:generation]}"]])
    puts table.render(:ascii, alignment: [:center],padding: [0.5,0.5,0.5,0.5])


        
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


