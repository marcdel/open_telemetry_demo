defmodule OpenTelemetryDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    OpenTelemetry.register_application_tracer(:open_telemetry_demo)

    children = [
      # Starts a worker by calling: OpenTelemetryDemo.Worker.start_link(arg)
      # {OpenTelemetryDemo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OpenTelemetryDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
