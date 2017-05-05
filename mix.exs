defmodule Phoenix_AJAX.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_ajax,
     version: "0.0.2",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
      package: [
        contributors: ["David Kuhta", "Jack Tang"],
        maintainers: ["Jack Tang"],
        licenses: ["MIT"],
        links: %{github: "https://github.com/jacktang/phoenix_ajax"}
      ],
      description: """
      Phoenix Template Engine supporting AJAX
      """
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:phoenix, "~> 1.2.1"},
      {:phoenix_html, "~> 2.6"}
    ]
  end
end
