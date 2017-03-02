require 'digest'

class UserResource < JSONAPI::Resource
  attributes :name, :email, :picture_url

  def picture_url
    "https://s.gravatar.com/avatar/#{Digest::MD5.hexdigest(@model.email)}"
  end

  has_many :tasks
end