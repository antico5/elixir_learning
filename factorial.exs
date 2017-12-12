defmodule Factorial do
  def of(1), do: 1
  def of(n) when n > 1, do: n * of(n-1)
end

IO.puts Factorial.of(10)
