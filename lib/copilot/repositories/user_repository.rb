# Data access for users.
class UserRepository < Hanami::Repository
  associations do
    has_many :trips
  end

  # Find a user by an email.
  #
  # @param email [String]
  # @return [User,nil]
  def find_by_email(email:)
    users.where(email: email).first
  end
end
