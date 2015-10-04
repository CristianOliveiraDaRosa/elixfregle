defmodule ElixfregleTest do
  use ExUnit.Case

  test "it should translate en=>pt" do
    # given
    word = "Hello"
    expected = "Olá"

    # when
    result = Elixfregle.translate(word, :en, :pt)
    # then
    assert expected == result[:translated]
  end

  test "it should contain original text" do
    # given
    word = "Hello"
    expected = "Hello"

    # when
    result = Elixfregle.translate(word, :en, :pt)
    # then
    assert expected == result[:original]
  end

  test "it should translate a phrase" do
    # given
    phrase = "Isso é uma frase traduzida"
    expected = "This is a translated phrase"

    # when
    result = Elixfregle.translate(phrase, :en, :pt)

    # then
    assert expected == result[:translated]
  end
end
