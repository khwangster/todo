defmodule App.UserView do
  use App.Web, :view
  use JaSerializer.PhoenixView

  attributes [:email, :slack_user_id, :name, :last_emailed_task_id, :enabled, :inserted_at, :updated_at]
  

end
