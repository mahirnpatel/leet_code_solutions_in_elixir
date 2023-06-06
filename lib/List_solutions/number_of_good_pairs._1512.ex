defmodule NumberOfGoodPairs do
  # Input: nums = [1,2,3,1,1,3]
  # Output: 4
  # Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.

  @spec num_identical_pairs(nums :: [integer]) :: integer
  def num_identical_pairs(nums) do
    count_good_pairs(nums, 0)
  end

  defp count_good_pairs([], good_pair), do: good_pair

  defp count_good_pairs([head | tail], good_pair) do
    good_pair =
      Enum.reduce(tail, good_pair, fn x, good_pair ->
        case {x, head} do
          {x, head} when x == head and head <= x -> good_pair + 1
          _ -> good_pair
        end
      end)

    count_good_pairs(tail, good_pair)
  end
end
