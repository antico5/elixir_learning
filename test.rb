require 'benchmark'

puts Benchmark.measure { (1..10_000_000).to_a.select {|i| i % 13 == 0 } }.total
