class Day < ApplicationRecord
  has_many :tasks, foreign_key: 'day'
  has_many :comments, through: :tasks
  has_many :users, through: :tasks

  def users
    User.where(enabled: true).map do |user|
      UserDay.new(user: user, day: date)
    end
  end

  self.primary_key = :date
end
