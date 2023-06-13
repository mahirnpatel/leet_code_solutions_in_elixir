defmodule FindDiffrence do
  @spec find_difference(nums1 :: [integer], nums2 :: [integer]) :: [[integer]]
  def find_difference(nums1, nums2) do
    s1 = MapSet.new(nums1)
    s2 = MapSet.new(nums2)
    [MapSet.difference(s1, s2) |> MapSet.to_list(), MapSet.difference(s2, s1) |> MapSet.to_list()]
  end
end
