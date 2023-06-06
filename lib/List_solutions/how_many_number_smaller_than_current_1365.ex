defmodule SmallerNumbersThanCurrent do
  @spec smaller_numbers_than_current(nums :: [integer]) :: [integer]
  def smaller_numbers_than_current(nums) do
    nums
    |> Enum.map(fn num -> smaller_then_curr(num, nums, 0) end)
  end

  defp smaller_then_curr(_, [], counter), do: counter

  defp smaller_then_curr(num, [head | tail], counter) do
    counter =
      case {num, head} do
        {num, head} when num > head -> counter + 1
        _ -> counter
      end

    smaller_then_curr(num, tail, counter)
  end
end
