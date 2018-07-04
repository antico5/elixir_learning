defmodule MyList do
  def inc number do
    number + 1
  end

  def len([]) do
    0
  end

  def len [head | tail] do
    1 + len(tail)
  end

  def square [] do
    []
  end

  def square [head|tail] do
    [head * head | square(tail)]
  end

  def map [], _ do
    []
  end

  def map [head|tail], function do
    [function.(head) | map(tail, function)]
  end

  def sum [] do
    0
  end

  def sum [head | tail] do
    head + sum(tail)
  end

  def maximum [head | tail] do
    _maximum [head|tail], head
  end

  def _maximum [], current_max do
    current_max
  end

  def _maximum([head|tail], current_max) when head >= current_max do
    _maximum tail, head
  end

  def _maximum([head|tail], current_max) when head < current_max do
    _maximum tail, current_max
  end

  def reduce [head|tail], func do

  end

  def _reduce [head|tail], accumulator, func do

  end
end

IO.puts MyList.len('1234')
IO.puts MyList.square([1,2,3,4,5,6])
IO.puts to_string(MyList.map([61], &(&1 + 1)))
IO.puts MyList.sum [1,2,3,4]

IO.puts MyList.maximum [1,20,3,4]

