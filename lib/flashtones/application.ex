defmodule Flashtones.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      FlashtonesWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Flashtones.PubSub},
      # Start Finch
      {Finch, name: Flashtones.Finch},
      # Start the Endpoint (http/https)
      FlashtonesWeb.Endpoint
      # Start a worker by calling: Flashtones.Worker.start_link(arg)
      # {Flashtones.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Flashtones.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FlashtonesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
