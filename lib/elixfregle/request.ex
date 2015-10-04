defmodule Request do
  alias Extract 
  alias Elixir.URI
  use HTTPotion.Base

  @doc """
    Append the provided URI in the API domain
    @param uri
  """
  def process_url(url) do
    "https://translate.google.com/translate_a/" <> URI.encode(url)
  end

  @doc """
    Process response parsing extracting the translation
  """
  def process_response_body(body) do
    IO.puts body
    body |> IO.iodata_to_binary |> Extract.extract
  end
end
