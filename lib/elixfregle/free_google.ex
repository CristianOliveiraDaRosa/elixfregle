defmodule FreeGoogleTranslator do
  import Extract
  import Request
  
  def api_url do
    "https://translate.google.com/translate_a/"
  end

  def params(text, from, to) do
    "single?client=z&sl=#{from}&tl=#{to}&dt=t&dt=rm&q=#{text}"
  end

  def translate(text, from, to) do
    api_url <> params(text, from, to)
      |> URI.encode 
      |> Request.get
      |> Extract.extract
  end
end
