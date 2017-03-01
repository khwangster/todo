defmodule App.CommentView do
  use App.Web, :view
  use JaSerializer.PhoenixView

  attributes [:user_id, :task_id, :message, :inserted_at, :updated_at]
  

end
