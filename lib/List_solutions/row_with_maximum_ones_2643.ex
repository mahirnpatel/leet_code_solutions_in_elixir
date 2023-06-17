defmodule RowAndMaximumOnes do
  defstruct index: 0, previous_ones_count: 0
  @spec row_and_maximum_ones(mat :: [[integer]]) :: [integer]
  def row_and_maximum_ones(mat) do
    mat
    |> Enum.with_index()
    |> max_ones(%RowAndMaximumOnes{})
  end

  defp max_ones([], %{index: index_num, previous_ones_count: prev_count} = info),
    do: [index_num, prev_count]

  defp max_ones(
         [{list, index} | tail],
         %{index: index_num, previous_ones_count: prev_count} = info
       ) do
    current_ones =
      list
      |> Enum.count(fn num -> num == 1 end)

    info =
      cond do
        current_ones > prev_count -> %{info | index: index, previous_ones_count: current_ones}
        true -> info
      end

    max_ones(tail, info)
  end
end
