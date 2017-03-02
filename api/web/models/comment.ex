defmodule App.Comment do
  use App.Web, :model

  schema "comments" do
    field :message, :string
    belongs_to :user, App.User
    belongs_to :task, App.Task

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:user_id, :task_id, :message])
    |> validate_required([:user_id, :task_id, :message])
  end
end
