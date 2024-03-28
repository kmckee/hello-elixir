defmodule StringStuffTest do
  use ExUnit.Case
  doctest StringStuff

  test "use <> to concatenate" do
    expected = "Hello world"
    assert "Hello " <> "world" == expected
  end

  test "use <> to concatenate <> multiple times" do
    expected = "Hello world"
    assert "Hello" <> " " <> "world" == expected
  end

  test "use String interpolation to concatenate" do
    greeting = "Bonjour"
    assert "#{greeting} world" == "Bonjour world"
  end

  test "escaping in strings" do
    assert "This is a \"quote\" inside a string" == "This is a \"quote\" inside a string"
  end

  test "new lines in strings" do
    assert "This is a\nnew line\n" == """
           This is a
           new line
           """
  end

  test "trimming a string" do
    assert String.trim("  hello  ") == "hello"
  end

  test "capitalizing a string" do
    assert String.capitalize("hello") == "Hello"
  end

  test "splitting a string" do
    assert String.split("hello world") == ["hello", "world"]
  end

  test "getting initials from a name" do
    assert StringStuff.initials("John Doe") == "JD"
  end

  test "types are coerced to strings during interpolation" do
    my_number = 42
    assert "Here's a number: #{my_number}!" == "Here's a number: 42!"
  end

  test "somethin" do
    assert StringStuff.concatenate("hello", " world") == "hello world"
  end
end
