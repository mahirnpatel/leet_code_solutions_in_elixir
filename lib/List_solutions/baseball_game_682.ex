defmodule CalPoints do
  @spec cal_points(operations :: [String.t()]) :: integer
  def cal_points(operations) do
    sum_of_scores(operations, [])
  end

  defp sum_of_scores([], score_board) do
    score_board |> Enum.sum()
  end

  defp sum_of_scores(["C" | operations], score_board) do
    sum_of_scores(operations, List.delete_at(score_board, -1))
  end

  defp sum_of_scores(["D" | operations], score_board) do
    sum_of_scores(operations, score_board ++ [Enum.at(score_board, -1) * 2])
  end

  defp sum_of_scores(["+" | operations], score_board) do
    sum_of_scores(
      operations,
      score_board ++ [Enum.at(score_board, -1) + Enum.at(score_board, -2)]
    )
  end

  defp sum_of_scores([current_operations | operations], score_board) do
    sum_of_scores(operations, score_board ++ [String.to_integer(current_operations)])
  end
end
