defmodule Chacha20.Mixfile do
  use Mix.Project

  def project do
    [app: :chacha20,
     version: "0.3.4",
     elixir: "~> 1.3",
     name: "Chacha20",
     source_url: "https://github.com/mwmiller/chacha20_ex",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [
      {:earmark, "~> 1.0", only: :dev},
      {:ex_doc, "~> 0.13", only: :dev},
    ]
  end

  defp description do
      """
      Chacha20 symmetric stream cipher
      """
  end
  defp package do
    [
     files: ["lib", "mix.exs", "README*", "LICENSE*", ],
     maintainers: ["Matt Miller"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mwmiller/chacha20_ex",
              "RFC"   => "https://tools.ietf.org/html/rfc7539",
              }
    ]
  end

end
