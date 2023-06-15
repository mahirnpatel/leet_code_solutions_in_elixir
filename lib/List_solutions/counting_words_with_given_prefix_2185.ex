defmodule PrefixCount do
  @spec prefix_count(words :: [String.t()], pref :: String.t()) :: integer
  def prefix_count(words, pref) do
    words
    |> Enum.reduce(0, fn word, acc ->
      case String.starts_with?(word, pref) do
        true -> acc + 1
        _ -> acc
      end
    end)
  end
end
