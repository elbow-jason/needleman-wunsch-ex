defmodule AlignTest do
  use ExUnit.Case


  test "two_dimensional_list gives a 2-D list" do
    assert Align.Algorithm.zeros(2,2) == [[0,0], [0,0]]
  end
end
