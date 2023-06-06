defmodule ShuffleArray do
  def shuffle(nums, n) do
    nums
    |> Enum.chunk_every(n)
    |> form_main_list([])
  end

  defp form_main_list([[], []], result), do: result

  defp form_main_list([[x_head | x_tail], [y_head | y_tail]], result) do
    result = result ++ [x_head] ++ [y_head]
    form_main_list([x_tail, y_tail], result)
  end
end
