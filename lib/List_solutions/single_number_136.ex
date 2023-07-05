defmodule SingleNumber do
  @spec single_number(nums :: [integer]) :: integer
  def single_number(nums) do
    nums
    |> Enum.frequencies(nums)
    |> Enum.find(fn {_element, freq} -> freq == 1 end)
    |> elem(0)
  end
end
