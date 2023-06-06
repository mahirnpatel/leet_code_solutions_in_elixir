defmodule MaximizeSum do
  @spec maximize_sum(nums :: [integer], k :: integer) :: integer
  def maximize_sum(nums, k) do
     nums
     |> Enum.max()
     |> find_maximum_sum(k , 0)
  end

    defp find_maximum_sum(_ , 0 , sum) , do: sum
    defp find_maximum_sum(max_number , iteration , sum), do: find_maximum_sum(max_number+1 , iteration-1 , sum+max_number)
end
