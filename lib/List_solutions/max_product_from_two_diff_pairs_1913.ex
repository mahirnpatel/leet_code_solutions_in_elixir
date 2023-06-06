defmodule MaximumProductFromTwoDiffPairs do
  def max_product_diff(nums) do
    sorted_list = Enum.sort(nums, &(&1 >= &2))

    Enum.at(sorted_list, 0) * Enum.at(sorted_list, 1) -
      Enum.at(sorted_list, -2) * Enum.at(sorted_list, -1)
  end
end
