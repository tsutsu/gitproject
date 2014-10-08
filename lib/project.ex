defmodule Git.Project do
  defmacro __using__(_) do
    quote do
      require Git.Project
      import Git.Project
    end
  end

  defmacro project_version do
    case File.read("rel/checkout.describe") do
      {:ok, description_lns} -> String.rstrip(description_lns)
      _ -> "0.0.0-untagged"
    end
  end
end
