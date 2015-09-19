defmodule Processor do
  def start do
    loop(0)
  end

  def loop(n) do
    IO.puts n
    spawn(&receiver/0)
    loop(n+1)
  end

  def receiver do
    receive do
      :nope -> :ok
    end
  end
end

Processor.start
