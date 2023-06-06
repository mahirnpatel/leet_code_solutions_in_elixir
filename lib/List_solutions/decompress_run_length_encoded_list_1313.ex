defmodule DecompressEncodedList do
  @spec decompress_rl_elist(nums :: [integer]) :: [integer]
  def decompress_rl_elist(nums) do
    nums
    |> Enum.chunk_every(2)
    |> Enum.reduce([], fn [freq, value], result -> sub_list(freq, value, result) end)
  end

  defp sub_list(0, _, result), do: result

  defp sub_list(freq, value, result) do
    sub_list(freq - 1, value, result ++ [value])
  end
end
