class String
  def beats?(second_hand)
    (self == "rock" && second_hand == "scissors") || (self == "paper" && second_hand == "rock") || (self == "scissors" && second_hand == "paper")
  end
end
