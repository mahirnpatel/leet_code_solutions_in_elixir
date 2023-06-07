defmodule LargestAltitude do
  @spec largest_altitude(gain :: [integer]) :: integer
  def largest_altitude(gain) do
    highest_altitude(gain, [0])
  end

  defp highest_altitude(gain, result) do
    Enum.reduce(gain, result, fn altitude, [head | _tail] = result ->
      [altitude + head] ++ result
    end)
    |> Enum.max()
  end
end
