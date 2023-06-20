defmodule BusyStudents do
  @spec busy_student(start_time :: [integer], end_time :: [integer], query_time :: integer) ::
          integer
  def busy_student(start_time, end_time, query_time) do
    stud_doing_homework_at_time(start_time, end_time, query_time, 0)
  end

  defp stud_doing_homework_at_time([], [], _query_time, num_of_students), do: num_of_students

  defp stud_doing_homework_at_time(
         [start_head | start_tail],
         [end_head | end_tail],
         query_time,
         num_of_students
       ) do
    num_of_students =
      case {start_head, end_head, query_time} do
        {start_head, end_head, query_time}
        when start_head <= query_time and end_head >= query_time ->
          num_of_students + 1

        _ ->
          num_of_students
      end

    stud_doing_homework_at_time(start_tail, end_tail, query_time, num_of_students)
  end
end
