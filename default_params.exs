defmodule DefaultParams do
  def func(p1, p2\\3)

  def func(_, 4) do
    IO.puts "Special case"
  end

  def func(p1, p2) do
    IO.inspect [p1, p2]
  end
end

DefaultParams.func(1)
DefaultParams.func(1, 5)
DefaultParams.func(1, 4)
