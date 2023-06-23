defmodule MergeSimilarItems do
  @spec merge_similar_items(items1 :: [[integer]], items2 :: [[integer]]) :: [[integer]]
  def merge_similar_items(items1, items2) do
    merged_list = Enum.concat(items1, items2)

    Enum.reduce(merged_list, [], fn [current_value, current_weight], result ->
      final_weight =
        Enum.reduce(merged_list, 0, fn [value, weight], acc ->
          cond do
            value == current_value -> acc + weight
            true -> acc
          end
        end)

      result ++ [[current_value, final_weight]]
    end)
    |> Enum.uniq()
    |> Enum.sort()
  end
end
