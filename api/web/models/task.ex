defmodule App.Task do
  use App.Web, :model

  schema "tasks" do
    field :day, Ecto.Date
    field :description, :string
    field :status, :string
    belongs_to :user, App.User
    has_many :comments, App.Comment

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:day, :description, :status])
    |> validate_required([:day, :description, :status])
  end
end
