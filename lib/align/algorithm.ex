defmodule Align.Algorithm do
  def setup(seq1, seq2) do
    mismatch = 2
    gap = 2
    seq1len = String.lenght(seq1)
    seq2len = String.lenght(seq2)
  end

  def zeros(seq1len, seq2len) do
    list1 = Enum.map(1..seq1len, fn x -> 0 end)
    Enum.map(1..seq2len, fn x -> list1 end)
  end
end
