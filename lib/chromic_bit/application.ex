defmodule ChromicBit.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ChromicBit.Repo,
      # Start the Telemetry supervisor
      ChromicBitWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ChromicBit.PubSub},
      # Start the Endpoint (http/https)
      ChromicBitWeb.Endpoint,
      ChromicPDF
      # Start a worker by calling: ChromicBit.Worker.start_link(arg)
      # {ChromicBit.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChromicBit.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ChromicBitWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
