defmodule Benchmark do
  def measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end

v = Benchmark.measure fn -> Enum.filter 1..10_000_000, (fn i -> rem(i,13) == 0 end) end
IO.puts(v)
