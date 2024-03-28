defmodule Calculator do
  def travelTime(speedMph, distanceMiles) do
    BasicMath.divide(distanceMiles, speedMph)
  end

  def percentageOf(percent, total) do
    # Pipe operator saves us from nested function calls
    # BasicMath.multiple(BasicMath.divide(percent, 100), total)
    percent
    |> BasicMath.divide(100)
    |> BasicMath.multiply(total)
  end
end
