defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  test "add 5 and 5" do
    assert BasicMath.add(5, 5) == 10
  end

  test "subtract 7 from 10" do
    assert BasicMath.subtract(7, 10) == 3
  end

  test "multiply 7 times 10" do
    assert BasicMath.multiply(7, 10) == 70
  end

  test "divide 10 by 2" do
    assert BasicMath.divide(10, 2) == 5
  end
end
