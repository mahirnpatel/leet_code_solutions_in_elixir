defmodule FindValue do
  @spec final_value_after_operations(operations :: [String.t()]) :: integer
  def final_value_after_operations(operations) do
    operations
    |> find_value
  end

  defp find_value(operations) do
    Enum.reduce(operations, 0, fn x, acc ->
      case x do
        "--X" -> acc - 1
        "X--" -> acc - 1
        "++X" -> acc + 1
        "X++" -> acc + 1
      end
    end)
  end
end
