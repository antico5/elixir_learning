defmodule Reduce do
  def reduce  [], value, _ do
    value
  end

  def reduce [head|tail], value, func do
    reduce tail, func.(head, value), func
  end
end

IO.puts Reduce.reduce([1,2,3], 0, &(&1 + &2))
