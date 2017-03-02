defmodule App.Router do
  use App.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", App do
    pipe_through :api

    resources "/tasks", TaskController
    resources "/users", UserController, only: [:index, :show]
    resources "/comments", CommentController
    get "/day/:date", DayController, :show
  end
end
