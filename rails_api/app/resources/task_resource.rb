class TaskResource < JSONAPI::Resource
  attributes :day, :description, :status

  belongs_to :user
end