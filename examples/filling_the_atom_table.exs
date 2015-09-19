defmodule FillerUp do
  def start do
    loop(0)
  end

  def loop(n) do
    IO.puts n
    :"#{n}"
    loop(n+1)
  end
end

FillerUp.start
