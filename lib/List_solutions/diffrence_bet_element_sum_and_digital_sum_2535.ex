defmodule DiffrenceOfSum do

  def difference_of_sum(nums) do
    nums
    |> Enum.map(fn num -> digits(num) end)
    |> Enum.sum()
  end

  defp digits(num) do
      digit_sum = num
      |> Integer.to_string()
      |> String.split("" , trim: true)
      |> Enum.map(fn number ->
          String.to_integer(number)
      end)
      |> Enum.sum()

      num - digit_sum

  end

end
