defmodule GreatestCommonDivisor do
  def of(x,0), do: x
  def of(x,y), do: of(y, rem(x,y))
end

IO.puts GreatestCommonDivisor.of(15,35)
IO.puts GreatestCommonDivisor.of(15,0)
IO.puts GreatestCommonDivisor.of(39,26)
IO.puts GreatestCommonDivisor.of(734832,1237283)
