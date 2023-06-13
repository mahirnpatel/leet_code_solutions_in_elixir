defmodule First_palindrome do
  @spec first_palindrome(words :: [String.t()]) :: String.t()
  def first_palindrome(words) do
    first_pal(words, [])
  end

  defp first_pal([], []), do: ""

  defp first_pal(_words, [palindrome_string] = result) when length(result) == 1,
    do: palindrome_string

  defp first_pal([head | tail], result) do
    reversed_string =
      head
      |> String.reverse()
      |> String.equivalent?(head)

    result =
      case reversed_string do
        true -> result ++ [head]
        _ -> result
      end

    first_pal(tail, result)
  end
end
