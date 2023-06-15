defmodule FindNumbers do
  @spec find_numbers(nums :: [integer]) :: integer
  def find_numbers(nums) do
    nums
    |> Enum.reduce(0, fn num, acc ->
      digit_length = Integer.to_string(num) |> String.length()

      case digit_length do
        digit_length when rem(digit_length, 2) == 0 -> acc + 1
        _ -> acc
      end
    end)
  end
end
