defmodule Recursion do
  def get_equipment_list() do
    ["Helmet", "Boots", "Gloves", "Chestplate", "Space Suit"]
  end

  def loop([]), do: nil

  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def my_count([]), do: 0
  def my_count([_ | tail]), do: 1 + my_count(tail)

  def format_equipment_list([]), do: []

  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail)]
  end

  def occurence_count([], _value), do: 0
  def occurence_count([_head | _tail], "Kyle"), do: 42
  def occurence_count([value | tail], value), do: 1 + occurence_count(tail, value)
  def occurence_count([_head | tail], value), do: 0 + occurence_count(tail, value)

  def partial_occurence([], _value), do: 0

  def partial_occurence([head | tail], value) do
    head_down = String.downcase(head)
    value_down = String.downcase(value)

    if String.contains?(head_down, value_down) do
      1 + partial_occurence(tail, value)
    else
      0 + partial_occurence(tail, value)
    end
  end
end
