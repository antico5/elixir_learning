apply = fn(fun,value) ->
  fun.(value)
end

cuad = fn(val) -> val * val end

IO.puts apply.(cuad,13)
