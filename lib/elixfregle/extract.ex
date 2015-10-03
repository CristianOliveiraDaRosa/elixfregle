defmodule Extract do
  def extract(data) do
    captures = Regex.named_captures(~r/(?<translate>"(.*?)")/, "#{data}")
    captures["translate"] |> String.slice(1..-2)
  end
end
