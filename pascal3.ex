#/Users/jamessmith/    elixir/pascal3.ex

defmodule M do
  def diagonal(n, p) do
    index = n
    a = numerator(n, p, index) / fact(p)
    b = 1 + (n - p) / (p + 1)
    soln = round(a * b)
  end

  def numerator(nume, p, index) do
    if nume <= index - p + 1 do
      index + 1 - p
    else
      nume * numerator(nume - 1, p, index)
    end
  end

  def fact(denom) do
    if denom <= 1 do
      1
    else
      denom * fact(denom - 1)
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
