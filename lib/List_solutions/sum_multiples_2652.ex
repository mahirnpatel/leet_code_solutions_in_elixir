defmodule SumOfMultiples do
  @spec sum_of_multiples(n :: integer) :: integer
  def sum_of_multiples(n) do
    Enum.reduce(1..n, 0, fn num, sum ->
      cond do
        rem(num, 3) == 0 -> num + sum
        rem(num, 5) == 0 -> num + sum
        rem(num, 7) == 0 -> num + sum
        true -> sum
      end
    end)
  end
end
