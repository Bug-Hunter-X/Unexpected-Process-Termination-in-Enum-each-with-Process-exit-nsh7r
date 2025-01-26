```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {:ok, []}, fn x, acc ->
  if x == 3 do
    {:exit, :normal, acc}
  else
    {:ok, [{x, acc}]}
  end
end)

case result do
  {:ok, acc} -> IO.puts "Completed processing. Acc: #{acc}"
  {:exit, reason, acc} -> IO.puts "Terminated with reason: #{reason}. Acc: #{acc}"
end
```