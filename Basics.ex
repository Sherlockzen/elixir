defmodule Basics do

  defp soma(x, y), do: x + y
  defp subtrai(x, y), do: x - y
  defp multiplica(x, y), do: x * y
  defp divide(x, y), do: div(x, y)

  def executa(x, y) do
    ## PIPE OPERATOR | 2 + 3 = 5 - 3 = 2 * 3 = 5 / 3 = 2
    x
    |> soma(y)
    |> subtrai(y)
    |> multiplica(y)
    |> divide(y)

  end
end
