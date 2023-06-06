defmodule UniqueMorseCode do

  @morse_code %{
   "a" => ".-",
   "b" => "-...",
   "c" => "-.-.",
   "d" => "-..",
   "e" => ".",
   "f" => "..-.",
   "g" => "--.",
   "h" => "....",
   "i" => "..",
   "j" => ".---",
   "k" => "-.-",
   "l" => ".-..",
   "m" => "--",
   "n" => "-.",
   "o" => "---",
   "p" => ".--.",
   "q" => "--.-",
   "r" => ".-.",
   "s" => "...",
   "t" => "-",
   "u" => "..-",
   "v" => "...-",
   "w" => ".--",
   "x" => "-..-",
   "y" => "-.--",
   "z" => "--.."
  }

  def unique_morse_representations(words) when length(words) == 1, do: 1
  @spec unique_morse_representations(words :: [String.t]) :: integer
  def unique_morse_representations(words) do
    string_to_morse_codes(words)
    |> Enum.uniq()
    |> Enum.count()
  end

  defp string_to_morse_codes(words) do

        Enum.map(words , fn word ->
              String.graphemes(word)
              |> Enum.map(fn character -> Map.fetch!(@morse_code , character) end)
              |> Enum.join()
        end)
  end
end
