#/Users/jamessmith/    elixir/pascal4.ex

defmodule M do
  def diagonal(n, p) do
    choose(n + 1, p + 1)
  end

  defp choose(n, k) do
    Enum.reduce(1..k, 1, fn(i, a) -> div(a * (n - i + 1), i) end)
  end

end
