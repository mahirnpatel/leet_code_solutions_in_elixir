defmodule FizzBuzz do
  @spec fizz_buzz(n :: integer) :: [String.t()]
  def fizz_buzz(n) do
    create_fizzbuzz_list(n, [])
  end

  defp create_fizzbuzz_list(0, list), do: list

  defp create_fizzbuzz_list(iterator, list) do
    list =
      case iterator do
        iterator when rem(iterator, 3) == 0 and rem(iterator, 5) == 0 -> ["FizzBuzz"] ++ list
        iterator when rem(iterator, 3) == 0 -> ["Fizz"] ++ list
        iterator when rem(iterator, 5) == 0 -> ["Buzz"] ++ list
        _ -> ["#{iterator}"] ++ list
      end

    create_fizzbuzz_list(iterator - 1, list)
  end
end
