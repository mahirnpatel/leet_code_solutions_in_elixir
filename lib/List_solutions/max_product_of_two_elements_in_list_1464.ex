defmodule MaxProduct do
  @spec max_product(nums :: [integer]) :: integer
  def max_product(nums) do
    sorted_nums =
      nums
      |> Enum.sort(:desc)

      (Enum.at(sorted_nums , 0)-1) * (Enum.at(sorted_nums ,1 )-1)
  end
end
