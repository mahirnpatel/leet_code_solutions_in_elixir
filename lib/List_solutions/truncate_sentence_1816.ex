defmodule TruncateSentence do
  @spec truncate_sentence(s :: String.t(), k :: integer) :: String.t()
  def truncate_sentence(s, k) do
      s
      |> String.split(" ")
      |> Enum.slice(0..k-1)
      |> Enum.join(" ")
  end


end
