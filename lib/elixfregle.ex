##
# Free google translate
# Using:
# Elixfregle.translate "test", "en", "pt"
defmodule Elixfregle do
  use Translator

  def translate(text, from, to) do
    translated = request(text, from, to)
    translated
  end
end
