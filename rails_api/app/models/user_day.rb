
class UserDay
  attr_accessor :user, :day
  delegate :id, :email, :slack_user_id, :name, :enabled, to: :user

  def initialize(user:, day:)
    self.user = user
    self.day = day
  end

  def tasks
    user.tasks.where(day: day)
  end

end