defmodule App.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :user_id, :integer
      add :task_id, :integer
      add :message, :text

      timestamps()
    end

  end
end
