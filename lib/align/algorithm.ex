defmodule Align.Algorithm do
  def setup(seq1, seq2) do
    mismatch = 2
    gap = 2
    seq1len = String.lenght(seq1) + 1
    seq2len = String.lenght(seq2) + 1
  end

  def zeros(seq1len, seq2len) do
    list1 = Enum.map(1..seq1len, fn x -> 0 end)
    Enum.map(1..seq2len, fn x -> list1 end)
  end

  def gapify([first_row | two_d_list], gap_penalty) do
    first_row = Enum.map(first_row, fn x -> gap_penalty end)
    gapify_first_col = fn x -> first_is_gap(x, gap_penalty) end
    gap_in_first_col = Enum.map(two_d_list, gapify_first_col)
    [first_row | gap_in_first_col]
  end

  def first_is_gap([_head | rest], gap_penalty) do
    [gap_penalty | rest]
  end

  def get(matrix, row, col) do
    matrix
    |> Enum.at(row)
    |> Enum.at(col)
  end
end
