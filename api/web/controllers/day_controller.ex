defmodule App.DayController do
  use App.Web, :controller

  alias App.User
  alias JaSerializer.Params

  def show(conn, %{"date" => date}) do
    user_with_tasks = Repo.all(User)
      |> Repo.preload(:tasks)
    render(conn, "show.json-api", data: user_with_tasks)
  end

end
