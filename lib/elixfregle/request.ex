defmodule Request do
  use HTTPotion.Base

  def process_request_headers(headers) do
    Dict.put headers, :"User-Agent", "github-potion"
  end 
  
  def process_status_code(code) do
    response = %HTTPotion.Response{status_code: code}
    unless HTTPotion.Response.success?(response) do
      raise "Service unavailable"
    end
  end

  def process_response_body(body) do
    body |> IO.chardata_to_string
  end
end
