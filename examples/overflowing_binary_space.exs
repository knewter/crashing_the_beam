defmodule Overflower do
  def start do
    loop(0, "samplebinary", [])
  end

  def loop(n, bin, acc) do
    IO.puts n
    loop(n+1, bin, [:binary.copy(bin, 1_000)|acc])
  end
end

Overflower.start
