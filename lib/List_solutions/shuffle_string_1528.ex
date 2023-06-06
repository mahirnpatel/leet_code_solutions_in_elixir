defmodule ShuffleString do
  def restore_string(string, indices) do
    Enum.reduce(indices, "", fn index, restored_string ->
      restored_string <> String.at(string, index)
    end)
  end
end
