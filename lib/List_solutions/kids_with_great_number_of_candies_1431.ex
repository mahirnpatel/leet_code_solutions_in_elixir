defmodule KidsWithGreatCandies do
  @spec kids_with_candies(candies :: [integer], extra_candies :: integer) :: [boolean]
  def kids_with_candies(candies, extra_candies) do
    child_with_max_candies = Enum.max(candies)
    Enum.map(candies, fn child -> child + extra_candies >= child_with_max_candies end)
  end
end
