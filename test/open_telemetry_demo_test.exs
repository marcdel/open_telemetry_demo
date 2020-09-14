defmodule OpenTelemetryDemoTest do
  use ExUnit.Case
  doctest OpenTelemetryDemo

  test "greets the world" do
    assert OpenTelemetryDemo.hello() == :world
  end
end
