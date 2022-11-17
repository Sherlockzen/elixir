defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      (level === 0) -> cond do
        legacy? == false -> :trace
        true -> :unknown
      end
      (level === 1) -> :debug
      (level === 2) -> :info
      (level === 3) -> :warning
      (level === 4) -> :error
      (level === 5) -> cond do
        legacy? == false -> :fatal
        true -> :unknown
      end
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      level === 0 -> cond do
        legacy? == true -> :dev1
        true ->
      end
      level === 4 -> :ops
      level === 5 -> cond do
        legacy? == false -> :ops
        true -> :dev1
      end
      level === 1 -> cond do
        true ->
      end
      level === 2 -> cond do
        true ->
      end
      level === 3 -> cond do
        true ->
      end
      level === 4 -> cond do
        true ->
      end
      legacy? == true -> :dev1
      legacy? == false -> :dev2
    end
  end
end
