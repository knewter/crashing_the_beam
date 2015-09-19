defmodule Heaper do
  def start do
    pid = spawn(&receiver/0)
    loop(0, pid)
  end

  def loop(n, pid) do
    IO.puts n
    send(pid, :something)
    loop(n+1, pid)
  end

  def receiver do
    receive do
      :nope -> :ok
    end
  end
end

Heaper.start
