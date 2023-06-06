defmodule LeftRightDiffrence do
  @spec left_right_difference(nums :: [integer]) :: [integer]
  def left_right_difference(nums) do
    sum =
      nums
      |> Enum.sum()

    diff_in_list(right_list(nums, sum), left_list(nums, sum), [])
  end

  defp diff_in_list([], [], final_list), do: final_list

  defp diff_in_list([r_head | r_tail], [l_head | l_tail], final_list) do
    diff_in_list(r_tail, l_tail, final_list ++ [abs(r_head - l_head)])
  end

  defp left_list(nums, sum) do
    # Enum.scan(nums , previous_sum , fn num,previous_sum -> num + previous_sum end)
    Enum.reverse(nums)
    |> Enum.scan(sum, fn num, sum -> sum - num end)
    |> Enum.reverse()
  end

  defp right_list(nums, sum) do
    Enum.scan(nums, sum, fn num, sum -> sum - num end)
  end
end
