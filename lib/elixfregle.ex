defmodule Elixfregle do
  alias Translator

  @doc """
    Return a translated text of a given `text` `from` language `to` another
    language

    See language codes on
      {http://sites.google.com/site/tomihasa/google-language-codes}

        Example:
        { translated: "Ola mundo", original: "Hello word" }
  """
  def translate(text, from, to) do
    translated = FreeGoogleTranslator.translate(text, from, to)
    [translated: translated, original: text]
  end
end
