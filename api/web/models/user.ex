defmodule App.User do
  use App.Web, :model

  schema "users" do
    field :email, :string
    field :slack_user_id, :string
    field :name, :string
    field :last_emailed_task_id, :integer
    field :enabled, :boolean, default: false
    has_many :tasks, App.Task

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :slack_user_id, :name, :last_emailed_task_id, :enabled])
    |> validate_required([:email, :slack_user_id, :name, :last_emailed_task_id, :enabled])
  end
end
