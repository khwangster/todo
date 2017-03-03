class DayResource < JSONAPI::Resource
  attributes :date, :weekend, :holiday
  has_many :tasks
  has_many :users

  key_type :string
end