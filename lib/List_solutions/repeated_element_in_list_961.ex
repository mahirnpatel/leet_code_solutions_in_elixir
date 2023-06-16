defmodule RepeatedTimes do
  @spec repeated_n_times(nums :: [integer]) :: integer
  def repeated_n_times(nums) do
    repeated_element(nums)
  end

  defp repeated_element(nums) do
    [{element, _}] =
      nums
      |> Enum.frequencies()
      |> Enum.filter(fn {element, freq} -> freq > 1 end)

    element
  end
end
