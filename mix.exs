defmodule AutoError.MixProject do
  use Mix.Project

  def project do
    [
      app: :auto_error,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp description() do
    "AutoError helps you to pipe between functions returning {:ok, _} or {:error, _} easily."
  end

  defp package() do
    [
      maintainers: ["hailong"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/longlongh4/AutoError"}
    ]
  end
end
