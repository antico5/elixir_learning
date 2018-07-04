defmodule Swapper do
  def swap [] do
    []
  end

  def swap [item] do
    raise "odd number of elements"
  end

  def swap [first, second|tail] do
    [second, first | swap(tail)]
  end
end

IO.puts Swapper.swap [1,2,3,4,5,6]
