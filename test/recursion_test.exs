defmodule RecursionTest do
  use ExUnit.Case

  test "recursion" do
    list = Recursion.get_equipment_list()
    Recursion.loop(list)
  end

  test "my count with 0 items" do
    assert Recursion.my_count([]) == 0
  end

  test "my count with 1 item" do
    assert Recursion.my_count(["A"]) == 1
  end

  test "my count with multiple items" do
    assert Recursion.my_count(["A", "B", "C"]) == 3
  end

  test "format equipment list with 0 items" do
    assert Recursion.format_equipment_list([]) == []
  end

  test "format equipment list with 1 item" do
    assert Recursion.format_equipment_list(["Helmet"]) == ["helmet"]
  end

  test "format a big equipment list" do
    equipment = ["Helmet", "Boots", "Gloves", "Chestplate", "Space Suit"]
    result = Recursion.format_equipment_list(equipment)
    assert result == ["helmet", "boots", "gloves", "chestplate", "space_suit"]
  end

  test "occurence count with 0 items" do
    assert Recursion.occurence_count([], "A") == 0
  end

  test "occurence count with all items" do
    assert Recursion.occurence_count(["A", "A"], "A") == 2
  end

  test "occurence count with some items" do
    assert Recursion.occurence_count(["A", "B", "A", "C", "A"], "A") == 3
  end

  test "occurence count with a special case" do
    assert Recursion.occurence_count(["A"], "Kyle") == 42
  end

  test "partial occurence count with no items" do
    assert Recursion.partial_occurence([], "B") == 0
  end

  test "partial occurence count with a matching item" do
    assert Recursion.partial_occurence(["B"], "B") == 1
  end

  test "partial occurence count with all items" do
    assert Recursion.partial_occurence(["ABC", "AB", "BA", "B"], "B") == 4
  end

  test "partial occurence is case insensitive" do
    assert Recursion.partial_occurence(["ABC", "AB", "BA", "B"], "b") == 4
  end
end
