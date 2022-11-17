defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup do
    result = elem(volume_pair, 1) * 240
    Tuple.append({:milliliter}, result)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce do
    result = elem(volume_pair, 1) * 30
    Tuple.append({:milliliter}, result)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon do
    result = elem(volume_pair, 1) * 5
    Tuple.append({:milliliter}, result)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon do
    result = elem(volume_pair, 1) * 15
    Tuple.append({:milliliter}, result)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter, do: Tuple.append({:milliliter}, elem(volume_pair, 1))

  def from_milliliter(volume_pair, unit) when unit == :cup, do: Tuple.append({unit}, elem(volume_pair, 1) / 240)
  def from_milliliter(volume_pair, unit) when unit == :fluid_ounce, do: Tuple.append({unit}, elem(volume_pair, 1) / 30)
  def from_milliliter(volume_pair, unit) when unit == :teaspoon, do: Tuple.append({unit}, elem(volume_pair, 1) / 5)
  def from_milliliter(volume_pair, unit) when unit == :tablespoon, do: Tuple.append({unit}, elem(volume_pair, 1) / 15)
  def from_milliliter(volume_pair, unit) when unit == :milliliter, do: Tuple.append({unit}, elem(volume_pair, 1))

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair)
    |> from_milliliter(unit)
  end

end
