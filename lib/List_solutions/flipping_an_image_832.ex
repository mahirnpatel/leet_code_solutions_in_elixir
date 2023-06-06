defmodule Solution do
  @spec flip_and_invert_image(image :: [[integer]]) :: [[integer]]
  def flip_and_invert_image(image) do
    flip_invert_image(image)
  end

  defp flip_invert_image(image) do
    Enum.map(image, fn row ->
      row
      |> Enum.reverse()
      |> Enum.map(fn element ->
        case element do
          1 -> 0
          0 -> 1
        end
      end)
    end)
  end
end
