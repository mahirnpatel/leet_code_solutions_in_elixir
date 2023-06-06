defmodule MaximumWordInSentence do
  @spec most_words_found(sentences :: [String.t()]) :: integer
  def most_words_found(sentences) do
    sentences
    |> Enum.map(fn words -> String.split(words, " ") |> Enum.count() end)
    |> Enum.max()
  end
end
