defmodule FreeGoogleTranslator do
  @doc """
    Request transalation of `text` `from` a given language `to` another

    Example:
      FreeGoogleTranslator.request("hello", :en, :pt) # => "ola"
  """
  def request(text, from, to) do
    Request.get("single?client=z&sl=#{from}&tl=#{to}-CN&dt=t&dt=rm&q=#{text}").body
  end
end
