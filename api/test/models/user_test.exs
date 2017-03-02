defmodule App.UserTest do
  use App.ModelCase

  alias App.User

  @valid_attrs %{email: "some content", enabled: true, last_emailed_task_id: 42, name: "some content", slack_user_id: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
