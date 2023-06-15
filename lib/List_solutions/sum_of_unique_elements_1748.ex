defmodule UniqueSum do
  @spec sum_of_unique(nums :: [integer]) :: integer
  def sum_of_unique(nums) do
    nums
    |> Enum.frequencies()
    |> Enum.reduce(0, fn {key, value}, acc ->
      cond do
        value == 1 -> acc + key
        true -> acc
      end
    end)
  end
end
