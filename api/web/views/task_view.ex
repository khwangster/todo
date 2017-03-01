defmodule App.TaskView do
  use App.Web, :view
  use JaSerializer.PhoenixView

  attributes [:day, :description, :status, :inserted_at, :updated_at]
  

end
