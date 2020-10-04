# frozen_string_literal: true

require 'csv'
require 'smarter_csv'
require 'tty-prompt'
require 'tty-table'
require 'colorize'

class Safari
  def initialize
    @showpokemon = []
  end

  def safari_Catch
    # We are gathering the data for the safari here from the pokemon data csv

    prompt = TTY::Prompt.new
    data_safari = SmarterCSV.process('pokemon.csv', { header_transformations: [:none] })

    return_to_lodge = false

    puts '.   ._, |_  .,'.colorize(:green)
    puts "`-._\/  .  \ /    |/_".colorize(:green)
    puts "    \\  _\, y | \//".colorize(:green)
    puts "_\_.___\\, \\/ -.\||".colorize(:green)
    puts '`7-,--.`._||  / / ,'.colorize(:white)
    puts "/'     `-. `./ / |/_.'".colorize(:white)
    puts '          |    |//'.colorize(:white)
    puts '          |_    /'.colorize(:white)
    puts '          |-   |'.colorize(:white)
    puts '          |   =|'.colorize(:white)
    puts '          |    |'.colorize(:white)
    puts '----------------------------'
    puts '░██████╗░█████╗░███████╗░█████╗░██████╗░██╗'.colorize(:cyan)
    puts '██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║'.colorize(:cyan)
    puts '╚█████╗░███████║█████╗░░███████║██████╔╝██║'.colorize(:cyan)
    puts '░╚═══██╗██╔══██║██╔══╝░░██╔══██║██╔══██╗██║'.colorize(:cyan)
    puts '██████╔╝██║░░██║██║░░░░░██║░░██║██║░░██║██║'.colorize(:cyan)
    puts '╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝'.colorize(:cyan)

    choices = { 'Start Catching!!' => 1 }
    safari_choice = prompt.select('Welcome to the Pokemon Safari lodge!!', choices)

    if safari_choice == 1

      until return_to_lodge == true

        # Here is where the a random pokemon from the pokemon CSV is being pulled

        random_pokemon = data_safari.sample

        puts '****************************************************************'

        puts "You were walking through the grass and a wild #{random_pokemon[:name]} appeared!!"

        puts '****************************************************************'

        puts "Would you like to try and catch #{random_pokemon[:name]}?"

        puts '****************************************************************'

        menu_safari_choice = { 'Run' => 1, 'Catch' => 2, 'Menu' => 3, 'Check' => 4 }
        safari_pokemon_choice = prompt.select('Run (Search for another) | catch (Try your luck) | Menu (Takes back to the main menu) | Check (Check caught pokemon', menu_safari_choice)

        system 'clear'

        if safari_pokemon_choice == 1

          puts '****************************************************************'

          puts 'Phew! you got away safely'

        elsif safari_pokemon_choice == 4

          table = TTY::Table.new(['Caught Pokemon'], [[@showpokemon]])

          puts table.render(:ascii)

          menu_choice = { 'Menu' => 1, 'Continue' => 2 }
          menu_choice2 = prompt.select('Menu (Takes back to the main menu and lose current pokemon caught) | Continue (Catch more Pokemon!) ', menu_choice)

          if menu_choice2 == 1
            system 'clear'
            break

          elsif menu_choice == 2

            next

          end

        elsif safari_pokemon_choice == 3
          break

        end

        next unless safari_pokemon_choice == 2

        puts '****************************************************************'
        puts "You lock eyes with #{random_pokemon[:name]} and throw your Pokeball"

        number = rand(1..10)

        if number <= 5
          puts '****************************************************************'
          puts "Oh no! You missed and #{random_pokemon[:name]} got away"

          # We are catching the pokemon here with a 50/50 chance on the 'rand' method

        elsif number >= 6
          puts '****************************************************************'
          puts "All right! You caught #{random_pokemon[:name]}"

          @showpokemon << (random_pokemon[:name]).to_s

        end

      end
    end
  end
end
