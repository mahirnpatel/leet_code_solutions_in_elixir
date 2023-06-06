defmodule SeprateDigits do
  @spec separate_digits(nums :: [integer]) :: [integer]
  def separate_digits(nums) do
    nums
    |> chunck_digits()
  end

  defp chunck_digits(nums) do
    nums
    |> Enum.map(fn num ->
      Integer.to_string(num)
      |> String.split("", trim: true)
      |> Enum.map(fn digit ->
        String.to_integer(digit)
      end)
    end)
    |> List.flatten()
  end
end
