defmodule App.TaskTest do
  use App.ModelCase

  alias App.Task

  @valid_attrs %{day: %{day: 17, month: 4, year: 2010}, description: "some content", status: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Task.changeset(%Task{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Task.changeset(%Task{}, @invalid_attrs)
    refute changeset.valid?
  end
end
