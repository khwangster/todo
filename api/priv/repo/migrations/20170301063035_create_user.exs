defmodule App.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :slack_user_id, :string
      add :name, :string
      add :last_emailed_task_id, :integer
      add :enabled, :boolean, default: false, null: false

      timestamps()
    end

    alter table(:tasks) do
      add :user_id, :integer
    end

  end
end
