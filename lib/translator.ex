defmodule Translator do
  defmacro __using__(parent) do
    quote do
      import FreeGoogleTranslator
    end
  end
end
