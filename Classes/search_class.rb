# frozen_string_literal: true

require 'csv'
require 'smarter_csv'
require 'tty-prompt'
require 'tty-table'

# *******Pokedex searching by Pokedex number function***********

class PokemonSearch
  def initialize; end

  def pokemonTestPokeDexNumer
    # Pulling in the data needed for the Pokedex from the CSV files
    prompt = TTY::Prompt.new
    data = SmarterCSV.process('pokemon.csv', { header_transformations: [:none] })
    types_data = SmarterCSV.process('types.csv', { header_transformations: [:none] })

    user_answer = true

    while user_answer == true
      system 'clear'
      puts 'Choose number between 1-151'

      user_choice = gets.chomp.to_i

      # Error handling for large numbers and wrong input

      if user_choice >= 152
        puts 'You have chosen a number larger than 151, please choose between 1 - 151'
        sleep(2)
        redo
      end

      select_pokemon = data.select { |hash| hash[:pokedexnumber] == user_choice }[0]

      if select_pokemon.nil? == true
        puts 'You did not enter a correct number(Glen stop using strings)'
        sleep(2)
        redo
      end

      table = TTY::Table.new(['Pokedex Number', 'Name', 'type(s)', 'HP stats', 'Attack stats', 'Defense stats', 'SP_Atk stats', 'SP_Def stats', 'Speed stats', 'Generation'], [[(select_pokemon[:pokedexnumber]).to_s, (select_pokemon[:name]).to_s, "#{select_pokemon[:type_1]} #{select_pokemon[:type_2]}", (select_pokemon[:hp]).to_s, (select_pokemon[:attack]).to_s, (select_pokemon[:defense]).to_s, (select_pokemon[:spatk]).to_s, (select_pokemon[:spdef]).to_s, (select_pokemon[:speed]).to_s, (select_pokemon[:generation]).to_s]])
      puts table.render(:ascii, alignment: [:center], padding: [0.5, 0.5, 0.5, 0.5])

      type_of_pokemon = select_pokemon[:type_1]
      type_of_pokemon2 = select_pokemon[:type_2]

      # This method here is displaying the type charts for the users selected pokemon

      def typechart(type_of_pokemon, type_of_pokemon2, types_data)
        pokemon_type1 = types_data.select { |hash| hash[:name] == type_of_pokemon }[0]
        pokemon_type2 = types_data.select { |hash| hash[:name] == type_of_pokemon2 }[0]

        puts "Type : #{pokemon_type1[:name]}"
        puts "#{pokemon_type1[:name]} moves are super-effective against: #{pokemon_type1[:attack_super_effective]}"
        puts "#{pokemon_type1[:name]} moves are not very effective against: #{pokemon_type1[:attack_not_super_effective]}"
        puts "These types are not very effective against #{pokemon_type1[:name]} Pokémon: #{pokemon_type1[:defence_not_very_effective]}"
        puts "These types are super-effective against #{pokemon_type1[:name]} Pokémon: #{pokemon_type1[:defence_super_very_effective]}"
        puts "#{pokemon_type1[:name]} moves have no effect on: #{pokemon_type1[:attack_no_effect]}"
        puts "These types have no effect on #{pokemon_type1[:name]} Pokémon: #{pokemon_type1[:defense_no_effect]}"

        if pokemon_type2.nil? == true

          nil

        elsif pokemon_type2.nil? == false

          puts "Type : #{pokemon_type2[:name]}"
          puts "#{pokemon_type2[:name]} moves are super-effective against: #{pokemon_type2[:attack_super_effective]}"
          puts "#{pokemon_type2[:name]} moves are not very effective against: #{pokemon_type2[:attack_not_super_effective]}"
          puts "These types are not very effective against #{pokemon_type2[:name]} Pokémon: #{pokemon_type2[:defence_not_very_effective]}"
          puts "These types are super-effective against #{pokemon_type2[:name]} Pokémon: #{pokemon_type2[:defence_super_very_effective]}"
          puts "#{pokemon_type2[:name]} moves have no effect on: #{pokemon_type2[:attack_no_effect]}"
          puts "These types have no effect on #{pokemon_type2[:name]} Pokémon: #{pokemon_type2[:defense_no_effect]}"

        end
      end

      choices = { 'Yes' => 1, 'No' => 2 }

      type_choices = prompt.select('Would you like to see the type chart for this Pokemon? (Yes or No)', choices)

      typechart(type_of_pokemon, type_of_pokemon2, types_data) if type_choices == 1

      choices = { 'Yes' => 1, 'No' => 2 }

      run_again = prompt.select('Would you like to search another Pokemon? (Yes or No)', choices)

      puts '****************************************************************'
      if run_again == 2
        user_answer = false
        system 'clear'
      elsif run_again == 1
        user_answer = true
        puts '****************************************************************'
      end
    end
  end

  # *******Pokedex searching by name function*********

  def pokemonTestPokemonName
    prompt = TTY::Prompt.new
    data = SmarterCSV.process('pokemon.csv', { header_transformations: [:none] })
    types_data = SmarterCSV.process('types.csv', { header_transformations: [:none] })

    user_answer = true

    while user_answer == true
      system 'clear'
      puts 'What is the Name of the Pokemon you are searching for?'

      user_choice = gets.chomp.to_s.capitalize

      select_pokemon = data.select { |hash| hash[:name] == user_choice }[0]

      # Error handling for wrong input

      if select_pokemon.nil? == true
        puts 'You did not input a name or you spelling is incorrect, please try again (Do not make a string looking at you Glen)'
        sleep(2)
        redo
        user_choice = false
        p user_choice

      end

      table = TTY::Table.new(['Pokedex Number', 'Name', 'type(s)', 'HP stats', 'Attack stats', 'Defense stats', 'SP_Atk stats', 'SP_Def stats', 'Speed stats', 'Generation'], [[(select_pokemon[:pokedexnumber]).to_s, (select_pokemon[:name]).to_s, "#{select_pokemon[:type_1]} #{select_pokemon[:type_2]}", (select_pokemon[:hp]).to_s, (select_pokemon[:attack]).to_s, (select_pokemon[:defense]).to_s, (select_pokemon[:spatk]).to_s, (select_pokemon[:spdef]).to_s, (select_pokemon[:speed]).to_s, (select_pokemon[:generation]).to_s]])
      puts table.render(:ascii, alignment: [:center], padding: [0.5, 0.5, 0.5, 0.5])

      type_of_pokemon = select_pokemon[:type_1]
      type_of_pokemon2 = select_pokemon[:type_2]

      # This method here is displaying the type charts for the users selected pokemon

      def typechart(type_of_pokemon, type_of_pokemon2, types_data)
        pokemon_type1 = types_data.select { |hash| hash[:name] == type_of_pokemon }[0]
        pokemon_type2 = types_data.select { |hash| hash[:name] == type_of_pokemon2 }[0]

        puts "Type : #{pokemon_type1[:name]}"
        puts "#{pokemon_type1[:name]} moves are super-effective against: #{pokemon_type1[:attack_super_effective]}"
        puts "#{pokemon_type1[:name]} moves are not very effective against: #{pokemon_type1[:attack_not_super_effective]}"
        puts "These types are not very effective against #{pokemon_type1[:name]} Pokémon: #{pokemon_type1[:defence_not_very_effective]}"
        puts "These types are super-effective against #{pokemon_type1[:name]} Pokémon: #{pokemon_type1[:defence_super_very_effective]}"
        puts "#{pokemon_type1[:name]} moves have no effect on: #{pokemon_type1[:attack_no_effect]}"
        puts "These types have no effect on #{pokemon_type1[:name]} Pokémon: #{pokemon_type1[:defense_no_effect]}"

        if pokemon_type2.nil? == true

          nil

        elsif pokemon_type2.nil? == false

          puts "Type : #{pokemon_type2[:name]}"
          puts "#{pokemon_type2[:name]} moves are super-effective against: #{pokemon_type2[:attack_super_effective]}"
          puts "#{pokemon_type2[:name]} moves are not very effective against: #{pokemon_type2[:attack_not_super_effective]}"
          puts "These types are not very effective against #{pokemon_type2[:name]} Pokémon: #{pokemon_type2[:defence_not_very_effective]}"
          puts "These types are super-effective against #{pokemon_type2[:name]} Pokémon: #{pokemon_type2[:defence_super_very_effective]}"
          puts "#{pokemon_type2[:name]} moves have no effect on: #{pokemon_type2[:attack_no_effect]}"
          puts "These types have no effect on #{pokemon_type2[:name]} Pokémon: #{pokemon_type2[:defense_no_effect]}"

        end
      end

      choices = { 'Yes' => 1, 'No' => 2 }

      type_choices = prompt.select('Would you like to see the type chart for this Pokemon? (Yes or No)', choices)

      typechart(type_of_pokemon, type_of_pokemon2, types_data) if type_choices == 1

      choices = { 'Yes' => 1, 'No' => 2 }

      run_again = prompt.select('Would you like to search another Pokemon? (Yes or No)', choices)

      if run_again == 2
        user_answer = false
        puts '****************************************************************'
        system 'clear'
      elsif run_again == 1
        user_answer = true
        puts '****************************************************************'
      end
    end
  end
end
