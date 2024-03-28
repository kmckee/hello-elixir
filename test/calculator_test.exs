defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "calculate time to travel a distance" do
    speedMph = 60
    distanceMiles = 90
    assert Calculator.travelTime(speedMph, distanceMiles) == 1.5
  end

  test "percentage of a value" do
    assert Calculator.percentageOf(50, 100) == 50
  end

  test "10% of 20 is 2" do
    assert Calculator.percentageOf(10, 20) == 2
  end

  test "25% of 4 is 1" do
    assert Calculator.percentageOf(25, 4) == 1
  end

  test "25% of 200 is 50" do
    assert Calculator.percentageOf(25, 200) == 50
  end
end
