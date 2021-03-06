defmodule Scrivener.Mixfile do
  use Mix.Project

  def project do
    [
      app: :scrivener,
      version: "2.7.0",
      elixir: "~> 1.2",
      package: package(),
      description: "Pagination for the Elixir ecosystem",
      deps: deps(),
      dialyzer: [ignore_warnings: ".dialyzer_ignore.exs"],
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, "~> 0.19.0", only: :dev},
      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev], runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Drew Olson"],
      licenses: ["MIT"],
      links: %{"github" => "https://github.com/drewolson/scrivener"},
      files: [
        "lib/scrivener.ex",
        "lib/scrivener",
        "mix.exs",
        "README.md"
      ]
    ]
  end
end
