defmodule OpenTelemetryDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :open_telemetry_demo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :opentelemetry],
      mod: {OpenTelemetryDemo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry, "~> 0.4.0"},
      {:opentelemetry_api, "~> 0.3.2"},
      {:opentelemetry_zipkin, "~> 0.3.0"}
    ]
  end
end
