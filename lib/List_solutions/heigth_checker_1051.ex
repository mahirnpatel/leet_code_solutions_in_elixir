defmodule HeightChecker do
  @spec height_checker(heights :: [integer]) :: integer
  def height_checker(heights) do
    heights
    |> Enum.sort()
    |> checker(heights, 0)
  end

  defp checker([], [], acc), do: acc

  defp checker(
         [curr_expected_height | others_expected_heights],
         [current_student_height | other_students_heights],
         acc
       ) do
    acc =
      case {curr_expected_height, current_student_height} do
        {curr_expected_height, current_student_height}
        when curr_expected_height != current_student_height ->
          acc + 1

        _ ->
          acc
      end

    checker(others_expected_heights, other_students_heights, acc)
  end
end
