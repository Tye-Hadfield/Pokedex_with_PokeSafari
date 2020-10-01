require "tty-prompt"

prompt = TTY::Prompt.new


choices = {"Scorpion" => 1, "Kano" => 2, "Jax" => 3}

choices = {"Scorpion" => 1, "Kano" => 2, "Jax" => 3}
choice = prompt.select("Choose your destiny?", choices)

p choice