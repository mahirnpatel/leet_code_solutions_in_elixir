defmodule SortListParity do
  @spec sort_array_by_parity(nums :: [integer]) :: [integer]
  def sort_array_by_parity(nums) do
    nums
    |> Enum.reduce([], fn num, result ->
      cond do
        rem(num, 2) == 0 -> [num] ++ result
        true -> result ++ [num]
      end
    end)
  end
end
