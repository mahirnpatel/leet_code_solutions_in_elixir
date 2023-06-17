defmodule FindTaretIndices do
  @spec target_indices(nums :: [integer], target :: integer) :: [integer]
  def target_indices(nums, target) do
    nums
    |> Enum.sort()
    |> Enum.with_index()
    |> Enum.reduce([], fn {num, index}, result ->
      case num do
        num when num == target -> result ++ [index]
        _ -> result
      end
    end)
  end
end
