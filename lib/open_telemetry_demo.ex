defmodule OpenTelemetryDemo do
  @moduledoc """
  Documentation for `OpenTelemetryDemo`.
  """

  require OpenTelemetry.Span
  require OpenTelemetry.Tracer

  def method_one do
    parent_ctx = OpenTelemetry.Tracer.current_span_ctx()

    OpenTelemetry.Tracer.with_span "method_one", %{parent: parent_ctx} do
      method_two()

      {:ok, 1}
    end
  end

  def method_two do
    parent_ctx = OpenTelemetry.Tracer.current_span_ctx()

    OpenTelemetry.Tracer.with_span "method_two", %{parent: parent_ctx} do
      method_three()

      {:ok, 2}
    end
  end

  def method_three do
    parent_ctx = OpenTelemetry.Tracer.current_span_ctx()

    OpenTelemetry.Tracer.with_span "method_three", %{parent: parent_ctx} do
      {:ok, 3}
    end
  end
end
