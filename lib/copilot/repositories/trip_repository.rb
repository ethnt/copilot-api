# Data access for trips.
class TripRepository < Hanami::Repository
  associations do
    belongs_to :user
  end

  # Get all of the trips for a user.
  #
  # @param user [User]
  # @return [ROM::Relation]
  def for_user(user:)
    trips.where(user_id: user.id)
  end
end
