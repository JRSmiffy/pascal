#/Users/jamessmith/    elixir/pascal1.ex

defmodule M do
  def diagonal(n, p) do
    if n < 1 do
      0
    else
      div(fact(n), fact(p) * fact(n - p)) + diagonal(n - 1, p)
    end
  end

  def fact(num) do
    if num <= 1 do
      1
    else
      num * fact(num-1)
    end
  end
end
