defmodule FlashtonesWeb.Router do
  use FlashtonesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {FlashtonesWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FlashtonesWeb do
    pipe_through :browser

    live "/index", IndexLive
    live "/aktuality", AktualityLive
    live "/faq", FaqLive
    live "/kontakty", KontaktyLive
    live "/kdoJsme", KdoJsmeLive
    live "/sluzby", SluzbyLive
    live "/hodnoceni", HodnoceniLive
    live "/zsIndex", ZsIndexLive
    live "/zsLanding", ZsLandingLive

    get "/", PageController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", FlashtonesWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:flashtones, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: FlashtonesWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
