class String
  def beats?(second_hand)
    (self == "rock" && second_hand == "scissors") || (self == "paper" && second_hand == "rock") || (self == "scissors" && second_hand == "paper")
  end
end

player_one_wins = 0
player_two_wins = 0
ties = 0
10.times{

  player_one = ""
  while (player_one != "rock") && (player_one != "paper") && (player_one != "scissors")
    puts "Player one; what are you throwing?"

    player_one = gets.chomp
  end

  100.times{ puts "__________"}

  player_two = ""

  while (player_two != "rock") && (player_two != "paper") && (player_two != "scissors")
    puts "Player two; what are you throwing?"

    player_two = gets.chomp
  end


  if player_one.beats?(player_two)
    player_one_wins += 1
    puts "Player one wins"
  elsif player_two.beats?(player_one)
    player_two_wins += 1
    puts "Player two wins"
  else
    ties += 1
    puts "Tie"
  end
}

puts "After 10 rounds:"
puts "Player One win : #{player_one_wins}"
puts "Player Two win : #{player_two_wins}"
puts "Ties : #{ties}"
