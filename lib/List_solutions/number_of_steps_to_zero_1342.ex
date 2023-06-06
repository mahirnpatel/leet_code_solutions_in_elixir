defmodule NumberOfSteps do
  @spec number_of_steps(num :: integer) :: integer
  def number_of_steps(num) do
    count_steps(num, 0)
  end

  defp count_steps(0, step), do: step

  defp count_steps(num, step) do
    num =
      case num do
        num when rem(num, 2) == 0 -> div(num, 2)
        _ -> num - 1
      end

    count_steps(num, step + 1)
  end
end
