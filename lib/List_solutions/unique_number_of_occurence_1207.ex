defmodule UniqueOccurrences do
  @spec unique_occurrences(arr :: [integer]) :: boolean
  def unique_occurrences(arr) do
    frequencies =
      Enum.frequencies(arr)
      |> Enum.map(fn {_element, freq} -> freq end)

    uniq_freqencies =
      Enum.uniq(frequencies)
      |> length()

    cond do
      length(frequencies) == uniq_freqencies -> true
      true -> false
    end
  end
end
