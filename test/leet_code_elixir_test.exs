defmodule LeetCodeElixirTest do
  use ExUnit.Case
  doctest LeetCodeElixir

  test "greets the world" do
    assert LeetCodeElixir.hello() == :world
  end
end
