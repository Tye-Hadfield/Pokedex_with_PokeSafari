# frozen_string_literal: true

require_relative 'Classes/search_class.rb'
require_relative 'Classes/safari_class.rb'
require 'tty-prompt'
require 'colorize'

# *****Main******

if ARGV[0] == '-a' || ARGV[0] == '--art'
  system 'clear'

  printf("                                           /\n")
  printf("                        _,.------....___,.' ',.-.\n")
  printf("                     ,-'          _,.--\"        |\n")
  printf("                   ,'         _.-'              .\n")
  printf("                  /   ,     ,'                   `\n")
  printf("                 .   /     /                     ``.\n")
  printf("                 |  |     .                       \\.\\\n")
  printf("       ____      |___._.  |       __               \\ `.\n")
  printf("     .'    `---\"\"       ``\"-.--\"'`  \\               .  \\\n")
  printf("    .  ,            __               `              |   .\n")
  printf("    `,'         ,-\"'  .               \\             |    L\n")
  printf("   ,'          '    _.'                -._          /    |\n")
  printf("  ,`-.    ,\".   `--'                      >.      ,'     |\n")
  printf(" . .'\\'   `-'       __    ,  ,-.         /  `.__.-      ,'\n")
  printf(" ||:, .           ,'  ;  /  / \\ `        `.    .      .'/\n")
  printf(" j|:D  \\          `--'  ' ,'_  . .         `.__, \\   , /\n")
  printf("/ L:_  |                 .  \"' :_;                `.'.'\n")
  printf(".    \"\"'                  \"\"\"\"\"'                    V\n")
  printf(" `.                                 .    `.   _,..  `\n")
  printf("   `,_   .    .                _,-'/    .. `,'   __  `\n")
  printf("    ) \\`._        ___....----\"'  ,'   .'  \\ |   '  \\  .\n")
  printf("   /   `. \"`-.--\"'         _,' ,'     `---' |    `./  |\n")
  printf("  .   _  `\"\"'--.._____..--\"   ,             '         |\n")
  printf("  | .\" `. `-.                /-.           /          ,\n")
  printf("  | `._.'    `,_            ;  /         ,'          .\n")
  printf(" .'          /| `-.        . ,'         ,           ,\n")
  printf(" '-.__ __ _,','    '`-..___;-...__   ,.'\\ ____.___.'\n")
  printf(" `\"^--'..'   '-`-^-'\"--    `-^-'`.''\"\"\"\"\"`.,^.`.--' mh\n")
  printf("\n")
  printf("\n")

  printf("               _,........__\n")
  printf("            ,-'            \"`-.\n")
  printf("          ,'                   `-.\n")
  printf("        ,'                        \\\n")
  printf("      ,'                           .\n")
  printf("      .'\\               ,\"\".       `\n")
  printf("     ._.'|             / |  `       \\\n")
  printf("     |   |            `-.'  ||       `.\n")
  printf("     |   |            '-._,'||       | \\\n")
  printf("     .`.,'             `..,'.'       , |`-.\n")
  printf("     l                       .'`.  _/  |   `.\n")
  printf("     `-.._'-   ,          _ _'   -\" \\  .     `\n")
  printf("`.\"\"\"\"\"'-.`-...,---------','         `. `....__.\n")
  printf(".'        `\"-..___      __,'\\          \\  \\     \\\n")
  printf("\\_ .          |   `\"\"\"\"'    `.           . \\     \\\n")
  printf("  `.          |              `.          |  .     L\n")
  printf("    `.        |`--...________.'.        j   |     |\n")
  printf("      `._    .'      |          `.     .|   ,     |\n")
  printf("         `--,\\       .            `7\"\"' |  ,      |\n")
  printf("            ` `      `            /     |  |      |    _,-'\"\"\"`-.\n")
  printf("             \\ `.     .          /      |  '      |  ,'          `.\n")
  printf("              \\  v.__  .        '       .   \\    /| /              \\\n")
  printf("               \\/    `\"\"\\\"\"\"\"\"\"\"`.       \\   \\  /.''                |\n")
  printf("                `        .        `._ ___,j.  `/ .-       ,---.     |\n")
  printf("                ,`-.      \\         .\"     `.  |/        j     `    |\n")
  printf("               /    `.     \\       /         \\ /         |     /    j\n")
  printf("              |       `-.   7-.._ .          |\"          '         /\n")
  printf("              |          `./_    `|          |            .     _,'\n")
  printf("              `.           / `----|          |-............`---'\n")
  printf("                \\          \\      |          |\n")
  printf("               ,'           )     `.         |\n")
  printf("                7____,,..--'      /          |\n")
  printf("                                  `---.__,--.'mh\n")

  printf("            /  ,'(\n")
  printf("           /`-'   \\__.,\n")
  printf("         ,'     .-\"\\ `---/                     /\n")
  printf("      |`'      /,'||    '.               ,`. ,(,_. _,\n")
  printf("  __  |  ,--+--.  ||     `'/  .     _.-\"'   `    \"\"`.\n")
  printf(".\" ,'-'.\"d__|  `.'_'    _,-    ,.  /        ._      `\\_\n")
  printf("|,'     `-..-----\"._     `.     ` |           `.     \\.\n")
  printf(" `\"V\"--._           `.   `._    ' |             \\     \\,\n")
  printf("  \\      `----      '. _,-'    ,' |              \\     .\n")
  printf("   `._             .--`       `.  |               .    |\n")
  printf("      `-.          `,.       ,--  |               L    '\n")
  printf("        /   [-,=.---' `.__`,`     `.              |     \\\n")
  printf("    _.-'    `.._'--.._   - `--+\"\"\"\" '._           |      `._,\n")
  printf("    \\        _  ---..__`--._'-.`,  ,' ,`._       j         -,'\n")
  printf("   .'        ,-..     ,'    `. `  . ,'  / `._   /`._    ___,-'_\n")
  printf("   l        .|_  `,  -' . .-\"      v   /   _.`.'`   7\",',-,.-\" --,\n")
  printf("    \\      `.  .,  -..',')'\"\",   .    /  .'    |  ,'.',/| ,.     >\n")
  printf("     V-.    '    -._,-\"    _,  .,'   j ,^    ,'/`--' `    -..,   `...\n")
  printf("     '  \\/\\|.     :/       './`'|    |/    ,' /            `___    ,'\n")
  printf("           | `. ,'`-.        /  |    ' _.-'  |               ,'  .\"\n")
  printf("           L._`.'   |       Y,.'|    ,-    ,-'          __.,'  .'\n")
  printf("            \\ \\  /`.|     _,.',''.  .`-,../         ,.-/,...-`'\n")
  printf("             \\ ,|| |/_.-\\\" .+'    \\._  _,'       _.'\"  |\n")
  printf("              '  ' L| | `,' |      `.\"\"          ,.    |\n")
  printf("              )    `|\"      |        `>.. _,..--\" j    |\n")
  printf("           ,-'      |____,..'       ,',-\"'       /   _,'\n")
  printf("          /\"'    _,.'               |(      _..-' `\"\"\n")
  printf("          `----\"'                    `'\"\"'\"\" mh\n")
  printf("\n")
  printf("\n")

  exit
end

if ARGV[0] == '-h' || ARGV[0] == '--help'
  system 'clear'
  puts 'Welcome to the Pokedex and Pokemon Safari terminal application!! I hope you enjoy this passion project, the below instructions will get you started.'
  puts '******************************'
  puts '+WHAT ARGUMENTS CAN I USE?+'
  puts '******************************'
  puts 'We currently have two command line arugment features and they are -h or --help this will bring up the instructions of the app'
  puts 'and -a or --art will bring up some of my favourite Ascii art of pokemon'
  puts '******************************'
  puts '+HOW TO MOVE AROUND INTERFACE+'
  puts '******************************'
  puts 'Please use your keyboard arrow keys to move throughout the interface and when finding the option you like pressing ENTER/RETURN will select your option.'
  puts '******************************'
  puts '+HOW TO USE POKEDEX+'
  puts '******************************'
  puts 'Using the pokedex is easy and effective, you will be presented with two options, one to search via the name and the other to search via the number'
  puts 'When making your selection with a number please remember this is only first gen of pokemon so choose a number between 1 - 151 and if using the pokemons'
  puts 'name make sure the spelling is correct otherwise you will recieve a error message that will pop up if selection criteria is wrong. '
  puts '******************************'
  puts '+HOW TO USE TYPECHART+'
  puts '******************************'
  puts "When you have found the pokemon you are searching via number or name you will be prompted if you would like to see the pokemon's type chart, by selecting"
  puts 'yes you will see a list of all this pokemons super effective types this is for both attack and defense, you will also see if this pokemon has any types'
  puts 'that have no effect when attacking and defending'
  puts '******************************'
  puts '+SEARCH ANOTHER?+'
  puts '******************************'
  puts 'If you are wishing to search another pokemon via the same method you will be asked if you would like to search another, you will be able to chose yes or no.'
  puts '******************************'
  puts '+GETTING BACK TO MAIN MENU+'
  puts '******************************'
  puts "To get back to the main menu all you need to do is select 'No' when asked to search another pokemon, this will bring you back to the main menu."
  puts '******************************'
  puts '+SAFARI!+'
  puts '******************************'
  puts "When choosing the Safari option you will enter a Pokemon zone where you can catch all 151 1st gen Pokemon! Select 'Start Catching!!' to begin."
  puts '******************************'
  puts '+Run+'
  puts '******************************'
  puts 'Run is an option you can choose when you encounter a pokemon you do not wish to catch, this will always bring a new pokemon for you to catch'
  puts '******************************'
  puts '+Catch+'
  puts '******************************'
  puts 'Catch allows you to try your luck with catching the pokemon you have encountered in the safari, you will have a 50/50 chance on catching every pokemon'
  puts '******************************'
  puts '+Menu+'
  puts '******************************'
  puts 'This option will take you back to the main menu where you can exit the application, search the Pokedex or start the Safari all over again.'
  puts '******************************'
  puts '+Check+'
  puts '******************************'
  puts 'Want to see what you have caught in the safari!! Here you will be able to check what you have caught and be able to choose to catch more or go back to menu'
  exit
end

# This is where the main program starts to loop through the main menu

def mainMenuLoop
  prompt = TTY::Prompt.new

  exit_choice = false

  until exit_choice == true

    puts '****************************************************************'

    puts '██████╗░░█████╗░██╗░░██╗███████╗██████╗░███████╗██╗░░██╗  ░█████╗░███╗░░██╗██████╗░'.colorize(:blue)
    puts '██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗██╔════╝╚██╗██╔╝  ██╔══██╗████╗░██║██╔══██╗'.colorize(:blue)
    puts '██████╔╝██║░░██║█████═╝░█████╗░░██║░░██║█████╗░░░╚███╔╝░  ███████║██╔██╗██║██║░░██║'.colorize(:blue)
    puts '██╔═══╝░██║░░██║██╔═██╗░██╔══╝░░██║░░██║██╔══╝░░░██╔██╗░  ██╔══██║██║╚████║██║░░██║'.colorize(:blue)
    puts '██║░░░░░╚█████╔╝██║░╚██╗███████╗██████╔╝███████╗██╔╝╚██╗  ██║░░██║██║░╚███║██████╔╝'.colorize(:blue)
    puts '╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░╚══════╝╚═╝░░╚═╝  ╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░'.colorize(:blue)

    puts '░██████╗░█████╗░███████╗░█████╗░██████╗░██╗'.colorize(:blue)
    puts '██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║'.colorize(:blue)
    puts '╚█████╗░███████║█████╗░░███████║██████╔╝██║'.colorize(:blue)
    puts '░╚═══██╗██╔══██║██╔══╝░░██╔══██║██╔══██╗██║'.colorize(:blue)
    puts '██████╔╝██║░░██║██║░░░░░██║░░██║██║░░██║██║'.colorize(:blue)
    puts '╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝'.colorize(:blue)

    choices = { 'PokeDex'.colorize(:yellow) => 1, 'Safari'.colorize(:blue) => 2, 'Help'.colorize(:green) => 3, 'Exit'.colorize(:red) => 4 }

    menu_choice = prompt.select('Please choose an option to begin!'.colorize(:red), choices)

    puts '****************************************************************'

    # This is the Help menu outputs

    if menu_choice == 3

      system 'clear'
      puts 'Welcome to the Pokedex and Pokemon Safari terminal application!! I hope you enjoy this passion project, the below instructions will get you started.'
      puts '******************************'
      puts '+WHAT ARGUMENTS CAN I USE?+'
      puts '******************************'
      puts 'We currently have two command line arugment features and they are -h or --help this will bring up the instructions of the app'
      puts 'and -a or --art will bring up some of my favourite Ascii art of pokemon'
      puts '******************************'
      puts '+HOW TO MOVE AROUND INTERFACE+'
      puts '******************************'
      puts 'Please use your keyboard arrow keys to move throughout the interface and when finding the option you like pressing ENTER/RETURN will select your option.'
      puts '******************************'
      puts '+HOW TO USE POKEDEX+'
      puts '******************************'
      puts 'Using the pokedex is easy and effective, you will be presented with two options, one to search via the name and the other to search via the number'
      puts 'When making your selection with a number please remember this is only first gen of pokemon so choose a number between 1 - 151 and if using the pokemons'
      puts 'name make sure the spelling is correct otherwise you will recieve a error message that will pop up if selection criteria is wrong. '
      puts '******************************'
      puts '+HOW TO USE TYPECHART+'
      puts '******************************'
      puts "When you have found the pokemon you are searching via number or name you will be prompted if you would like to see the pokemon's type chart, by selecting"
      puts 'yes you will see a list of all this pokemons super effective types this is for both attack and defense, you will also see if this pokemon has any types'
      puts 'that have no effect when attacking and defending'
      puts '******************************'
      puts '+SEARCH ANOTHER?+'
      puts '******************************'
      puts 'If you are wishing to search another pokemon via the same method you will be asked if you would like to search another, you will be able to chose yes or no.'
      puts '******************************'
      puts '+GETTING BACK TO MAIN MENU+'
      puts '******************************'
      puts "To get back to the main menu all you need to do is select 'No' when asked to search another pokemon, this will bring you back to the main menu."
      puts '******************************'
      puts '+SAFARI!+'
      puts '******************************'
      puts "When choosing the Safari option you will enter a Pokemon zone where you can catch all 151 1st gen Pokemon! Select 'Start Catching!!' to begin."
      puts '******************************'
      puts '+Run+'
      puts '******************************'
      puts 'Run is an option you can choose when you encounter a pokemon you do not wish to catch, this will always bring a new pokemon for you to catch'
      puts '******************************'
      puts '+Catch+'
      puts '******************************'
      puts 'Catch allows you to try your luck with catching the pokemon you have encountered in the safari, you will have a 50/50 chance on catching every pokemon'
      puts '******************************'
      puts '+Menu+'
      puts '******************************'
      puts 'This option will take you back to the main menu where you can exit the application, search the Pokedex or start the Safari all over again.'
      puts '******************************'
      puts '+Check+'
      puts '******************************'
      puts 'Want to see what you have caught in the safari!! Here you will be able to check what you have caught and be able to choose to catch more or go back to menu'

      leave_help = { 'Yes' => 1, 'No' => 2 }

      leave_help_choice = prompt.select('Would you like to go back to main menu? Yes (Go to main menu) || No (Close application) ', leave_help)

      if leave_help_choice == 2
        break
      elsif leave_help_choice == 1

      end

    end

    # Exit app

    if menu_choice == 4
      system 'clear'
      exit_choice = true

    end

    # Start the Safari

    if menu_choice == 2
      system 'clear'
      poke_safari = Safari.new
      poke_safari.safari_Catch
    end

    # Start the Pokedex

    next unless menu_choice == 1

    pokedex_choices = { 'PokeDex Number'.colorize(:red) => 1, 'Pokedex Name'.colorize(:blue) => 2 }

    how_to_search = prompt.select('How would you like to search the Pokedex, Name or Pokedex number?'.colorize(:yellow), pokedex_choices)

    if how_to_search == 1
      system 'clear'
      puts '****************************************************************'
      how_to_search = PokemonSearch.new
      how_to_search.pokemonTestPokeDexNumer

    elsif how_to_search == 2
      system 'clear'
      puts '****************************************************************'
      how_to_search = PokemonSearch.new
      how_to_search.pokemonTestPokemonName

    end

  end
end

mainMenuLoop
