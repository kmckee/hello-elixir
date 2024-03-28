defmodule StringStuff do
  def concatenate(left, right) do
    left <> right
  end

  def initials(name) do
    # The & makes it so I can pass a reference to the function rather than invoke it directly.
    # The &1 refers to the first argument passed to that anonymous function (firstName, lastName) passed
    # in from the Enum.map function.
    name
    |> String.split(" ")
    |> Enum.map(&String.at(&1, 0))
    |> Enum.join()
  end
end
