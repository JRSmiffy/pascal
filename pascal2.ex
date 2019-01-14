#/Users/jamessmith/    elixir/pascal2.ex

defmodule M do
  def diagonal(n, p) do
    div(fact(n), fact(p) * fact(n - p)) + div(fact(n), fact(p+1) * fact(n - p - 1))

  end

  def fact(num) do
    if num <= 1 do
      1
    else
      num * fact(num-1)
    end
  end
end

defmodule Benchmark do
  def measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end
