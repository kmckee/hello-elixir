defmodule PatternMatching do
  def get_equipment_list() do
    [:helmet, :boots, :gloves, :chest_plate, :space_suit]
  end

  def item_details(:helmet), do: {3, :kg, 1}
  def item_details(:boots), do: {1, :kg, 1}
  def item_details(:gloves), do: {0.25, :kg, 1}
  def item_details(:chest_plate), do: {15, :kg, 1}
  def item_details(:space_suit), do: {16, :kg, 1}
  def item_details(_other), do: raise("Unknown item")
end

defmodule SaucerPreflight do
  defp max_flying_load_lbs, do: 55
  defp convert_kg_to_lb(kg), do: kg * 2.2

  def get_weight_in_lbs([]), do: 0

  def get_weight_in_lbs([head | tail]) do
    details = PatternMatching.item_details(head)
    weight = elem(details, 0)
    weight_in_lbs = convert_kg_to_lb(weight)
    weight_in_lbs + get_weight_in_lbs(tail)
  end

  def is_under_max_load?(list) do
    total = get_weight_in_lbs(list)
    total < max_flying_load_lbs()
  end
end
