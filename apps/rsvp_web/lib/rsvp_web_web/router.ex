defmodule RsvpWebWeb.Router do
  use RsvpWebWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RsvpWebWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/events", EventController, :list
    get "/events/new", EventController, :create
    post "/events", EventController, :add
    post "/events/:id/reserve", EventController, :reserve
    get "/events/:id", EventController, :show
    get "/login", LoginController, :index
    post "/login", LoginController, :login

  end

  scope "/events", RsvpWebWeb do
    pipe_through :authorized

  end

  # Other scopes may use custom stacks.
  # scope "/api", RsvpWebWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: RsvpWebWeb.Telemetry
    end
  end
end
