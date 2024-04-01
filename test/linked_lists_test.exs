defmodule LinkedListTest do
  use ExUnit.Case

  test "creating literals" do
    list = [1]
    assert list == [1]

    list = [1, 2, 3]
    assert list == [1, 2, 3]

    list = [1, 2, 3, 4]
    assert Enum.count(list) == 4
  end

  test "use ++ to concatenate" do
    list = [1, 2, 3]
    assert list ++ [4] == [1, 2, 3, 4]
  end

  test "use hd to get the head" do
    list = [1, 2, 3]
    assert hd(list) == 1
    # hd comes from Kernel module
  end

  test "use tl to get the tail" do
    list = [1, 2, 3]
    assert tl(list) == [2, 3]
  end

  test "prepend a list with cons operator" do
    list = [2, 3]
    assert [1 | list] == [1, 2, 3]
    # Efficient because it doesn't copy the list
  end

  test "use cons to split a list" do
    list = [1, 2, 3, 4, 5, 6]
    [head, second | rest] = list
    assert head == 1
    assert second == 2
    assert rest == [3, 4, 5, 6]
  end

  test "append a list more performantly" do
    list = [1, 2, 3]
    reversed = Enum.reverse(list)
    appended = [4 | reversed]
    result = Enum.reverse(appended)
    assert result == [1, 2, 3, 4]
  end

  test "append a list more performantly refactored with pipe" do
    list = [1, 2, 3]
    result = list |> Enum.reverse() |> (fn reversed -> [4 | reversed] end).() |> Enum.reverse()
    assert result == [1, 2, 3, 4]
  end

  test "kernel allows length to be checked" do
    list = [1, 2, 3]
    assert length(list) == 3
  end
end
