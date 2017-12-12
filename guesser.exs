defmodule Guesser do
  def mid(n1, n2), do: div(n1+n2, 2)

  def guess(actual, from..to) do
    guess(actual, mid(from, to), from..to)
  end

  def guess(actual, actual, from..to) do
    IO.puts "It is #{actual} !!"
  end

  def guess(actual, guess, from..to) when guess > actual do
    IO.puts "Is it #{guess}?"
    guess(actual, mid(from, guess-1), from..guess-1)
  end

  def guess(actual, guess, from..to) when guess < actual do
    IO.puts "Is it #{guess}?"
    guess(actual, mid(guess+1, to), guess+1..to)
  end

end

Guesser.guess(237, 1..10000)
