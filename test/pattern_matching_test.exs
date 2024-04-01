defmodule LinkedListTest do
  use ExUnit.Case

  test "double equals is used for equality " do
    comparison = :foo == :bar
    assert comparison == false
  end

  test "binding variables" do
    foo = :foo
    bar = foo
    assert foo == bar

    # Rebinding foo doesn't affect bar
    foo = :baz
    assert foo == :baz
  end

  test "pinning to prevent rebinding" do
    foo = :foo
    bar = foo
    assert foo == bar

    # Pinning foo prevents rebinding and instead
    # applies pattern matching
    assert_raise MatchError, fn ->
      ^foo = :baz
    end
  end

  test "pattern matching with function calls" do
    # Like overloads in other languages but it's
    # more powerful and uses values instead of just types
    result = PatternMatching.item_details(:boots)
    assert result == {1, :kg, 1}
  end

  test "get weight in lbs" do
    weight_in_lbs = SaucerPreflight.get_weight_in_lbs([{1, :kg, 1}, {2, :kg, 1}])
    assert_in_delta weight_in_lbs, 6.6, 0.01
  end
end
