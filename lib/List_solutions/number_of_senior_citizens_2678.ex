defmodule CountSeniors do
  @spec count_seniors(details :: [String.t()]) :: integer
  def count_seniors(details) do
    details
    |> Enum.reduce(0, fn detail, acc ->
      age =
        ("#{String.at(detail, -4)}" <> "#{String.at(detail, -3)}")
        |> String.to_integer()

      case age do
        age when age > 60 -> acc + 1
        _ -> acc
      end
    end)
  end
end
