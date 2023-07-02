defmodule FindFinalValue do
  @spec find_final_value(nums :: [integer], original :: integer) :: integer
  def find_final_value(nums, original) do
    final_value_of_original(nums , original)
  end

  defp final_value_of_original(nums , original)  do
    cond do
      original in nums -> final_value_of_original(nums , 2*original)
      true -> original
    end
  end
end
