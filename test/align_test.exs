defmodule AlignTest do
  use ExUnit.Case
  import Align.Algorithm

  test "two_dimensional_list gives a 2-D list" do
    assert zeros(2,2) == [[0,0],
                                          [0,0]]

    assert zeros(3,2) == [[0,0,0],
                                          [0,0,0]]
  end

  test "first_is_gap makes the 0th element the gap_penalty" do
    assert first_is_gap([0,0,0,0,0], 10) == [10,0,0,0,0]
  end

  test "gapify makes all first row and column values the gap_penalty" do
    my_list = [[0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0]]
    expected  = [[10,10,10,10,10], [10,0,0,0,0], [10,0,0,0,0]]
    assert gapify(my_list, 10) == expected
  end

end
