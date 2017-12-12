add_n = fn n -> (fn other -> other + n end) end
add_two = add_n.(2)
add_three = add_n.(3)
add_four = add_n.(4)

IO.puts(add_two.(2))
IO.puts(add_three.(2))
IO.puts(add_four.(2))

prefix = fn prefix -> (fn text -> "#{prefix} #{text}" end) end

mrs = prefix.("Mrs.")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
