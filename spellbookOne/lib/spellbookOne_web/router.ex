defmodule SpellbookOneWeb.Router do
  use SpellbookOneWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {SpellbookOneWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug ProperCase.Plug.SnakeCaseParams
  end

  pipeline :user_auth do
    plug SpellbookOne.Accounts.Guardian.Pipeline
  end

  pipeline :ensure_auth do
    plug Guardian.Plug.EnsureAuthenticated
    plug SpellbookOneWeb.CurrentUserPlug
  end

  scope "/", SpellbookOneWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SpellbookFedorovWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  # if Mix.env() in [:dev, :test] do
    # import Phoenix.LiveDashboard.Router

    # scope "/" do
      # pipe_through :browser

      # live_dashboard "/dashboard", metrics: SpellbookFedorovWeb.Telemetry
    # end
  # end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end


  scope "/api/v1", SpellbookOneWeb.V1 do
    # pipe_through [:api, :user_auth]
    pipe_through [:api]
    post "/users", UserController, :create

    # pipe_through [:ensure_auth]
    pipe_through [:user_auth, :ensure_auth]
    resources "/spellbooks", SpellbookController, only: [:index , :show,
    :create, :update]
    resources "/spells", SpellController, only: [:index, :show]
  end
end
