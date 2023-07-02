defmodule SortedSquares do
  @spec sorted_squares(nums :: [integer]) :: [integer]
  def sorted_squares(nums) do
    nums
    |> Enum.map(fn element -> element * element end)
    |> Enum.sort()
  end
end
