defmodule Vidcapi do
  def start(:normal, []) do
    {:ok, _uvc} = :uvc.open([
      device: 0,
      debug: true,
      size: {640,480},
      fps: 20
    ])
    loop()
  end

  def loop() do
    receive do
      {:uvc, _uvc, codec, pts, jpeg} ->
        IO.puts "get jpeg"
        loop()
    end
  end
end
