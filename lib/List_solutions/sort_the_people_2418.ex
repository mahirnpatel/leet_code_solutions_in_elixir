defmodule SortPeople do
  @spec sort_people(names :: [String.t], heights :: [integer]) :: [String.t]
  def sort_people(names, heights) do
    sort_people_according_to_height(names , heights)
  end

  defp sort_people_according_to_height(names , heights) do
      heights
      |> Enum.with_index()
      |> Enum.sort(:desc)
      |> Enum.map(fn {_height , index} -> Enum.at(names , index) end)
  end
end
