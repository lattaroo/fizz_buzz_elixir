defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "FizzBuzz", "Buzz"]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when a invalid file is provided, returns an error" do
      expected_response = {:error, "Ops, an error occurred, reason: enoent"}

      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
