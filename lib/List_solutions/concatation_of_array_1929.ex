defmodule ConcatationsOfArray do
  @spec get_concatenation(nums :: [integer]) :: [integer]
  def get_concatenation(nums), do: nums ++ nums
end
