defmodule LetsChat.Router do
  use LetsChat.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LetsChat do
    pipe_through :api
  end
end
