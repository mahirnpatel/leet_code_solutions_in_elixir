defmodule CreateTargetArray do
  @spec create_target_array(nums :: [integer], index :: [integer]) :: [integer]
  def create_target_array(nums, index) do
    create_list(nums, index, [])
  end

  defp create_list([], _index, result), do: result

  defp create_list([num_head | num_tail], [index_head | index_tail], result) do
    create_list(num_tail, index_tail, List.insert_at(result, index_head, num_head))
  end
end
