defmodule TodotxtDeadlineNotify.MixProject do
  use Mix.Project

  def project do
    [
      app: :todotxt_deadline_notify,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:timex, :httpoison],
      extra_applications: [:logger],
      mod: {TodotxtDeadlineNotify.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:timex, "~> 3.5"},
      {:tzdata, "~> 1.0.2"},
      {:httpoison, "~> 1.8"},
      {:poison, "~> 3.1"}
    ]
  end
end
