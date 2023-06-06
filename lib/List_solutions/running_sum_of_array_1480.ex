defmodule RunningSumOfList do
  def running_sum(nums), do: Enum.scan(nums, 0, fn num, previous_sum -> num + previous_sum end)
end
