defmodule Git.Project do
  defmacro version do
    case File.read("rel/checkout.describe") do
      {:ok, description_lns} -> String.rstrip(description_lns)
      _ -> "0.0.0-untagged"
    end
  end
end
