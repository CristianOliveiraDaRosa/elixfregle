defmodule ElixfregleTest do
  use ExUnit.Case

  test "it should return ola from hello (en=>pt)" do
    result = Elixfregle.translate "hello", "en", "pt"
    assert result == "ola"
  end
end
