defmodule OpenTelemetryDemo do
  @moduledoc """
  Documentation for `OpenTelemetryDemo`.
  """

  require OpenTelemetry.Span
  require OpenTelemetry.Tracer

  @doc """
  Hello world.

  ## Examples

      iex> OpenTelemetryDemo.hello()
      :world

  """
  def hello do
    OpenTelemetry.Tracer.with_span "hello method" do
      val = :world

      OpenTelemetry.Span.set_attributes(result: val)

      val
    end
  end
end
