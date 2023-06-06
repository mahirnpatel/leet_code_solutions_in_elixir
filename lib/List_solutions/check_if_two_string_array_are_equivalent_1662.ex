defmodule ArrayStringAreEqual do
  @spec array_strings_are_equal(word1 :: [String.t()], word2 :: [String.t()]) :: boolean
  def array_strings_are_equal(word1, word2) do
    String.equivalent?(List.to_string(word1) , List.to_string(word2))
  end
end
