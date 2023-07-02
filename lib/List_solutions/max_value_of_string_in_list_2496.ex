defmodule MaximumValue do
  @spec maximum_value(strs :: [String.t()]) :: integer
  def maximum_value(strs) do
    # find_max(strs , max_value)
    strs
    |> Enum.map(fn string ->
      try do
        String.to_integer(string)
      rescue
        ArgumentError -> String.length(string)
      end
    end)
    |> Enum.max()
  end
end
