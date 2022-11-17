defmodule GuessingGame do
  def compare(secret_number, guess \\ "Make a guess") do
    test = fn
     y when not is_integer(y) -> "Make a guess"

      y when secret_number == y -> "Correct"

      y when y > secret_number + 1 -> "Too high"

      y when y < secret_number - 1 -> "Too low"

      y when y == secret_number - 1 or y == secret_number + 1 -> "So close"
    end
    test.(guess)
  end
end
