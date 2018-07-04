defmodule WeatherHistory do
  def for_location [], _ do
    []
  end

  def for_location([head = [_, id, _, _] | tail], id) do
    [ head | for_location(tail, id) ]

  end

  def for_location [ _ | tail], id do
    for_location(tail, id)
  end

  def test_data do
    [
      [12314, 26, 15, 0.125],
      [12314, 26, 15, 0.125],
      [12314, 27, 18, 0.145],
      [12314, 28, 15, 0.125],
      [12314, 27, 15, 0.125],
    ]
  end
end
