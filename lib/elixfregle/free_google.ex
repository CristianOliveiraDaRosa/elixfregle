defmodule FreeGoogleTranslator do
  def request(text, from, to) do
    Request.get("single?client=z&sl=#{from}&tl=#{to}-CN&dt=t&dt=rm&q=#{text}").body
  end
end
