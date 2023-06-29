defmodule MaximumCount do
  @spec maximum_count(nums :: [integer]) :: integer
  def maximum_count(nums) do
    nums
    |> Enum.reduce([0, 0], fn num, [pos, neg] ->
      cond do
        num > 0 -> [pos + 1, neg]
        num < 0 -> [pos, neg + 1]
        true -> [pos, neg]
      end
    end)
    |> Enum.max()
  end
end
