defmodule Request do
  alias Extract
  use HTTPotion.Base

  def process_url(url) do
    "https://translate.google.com/translate_a/" <> url
  end

  def process_response_body(body) do
    body |> Extract.extract
  end
end
