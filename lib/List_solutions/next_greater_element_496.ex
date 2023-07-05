defmodule NextGreaterElement do
  @spec next_greater_element(nums1 :: [integer], nums2 :: [integer]) :: [integer]
  def next_greater_element(nums1, nums2) do
    find_next_greater_element(nums1, nums2, [])
  end

  defp find_next_greater_element([], _main_list, result), do: result

  defp find_next_greater_element([head | tail], main_list, result) do
    index = Enum.find_index(main_list, fn element -> element == head end)

    next_max =
      Enum.slice(main_list, (index + 1)..length(main_list))
      |> Enum.find(fn x -> x > head end)

    result =
      cond do
        next_max != nil -> result ++ [next_max]
        true -> result ++ [-1]
      end

    find_next_greater_element(tail, main_list, result)
  end
end
