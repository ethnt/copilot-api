# The entity for a user.
class User < Hanami::Entity
  EMAIL_FORMAT = /\@/.freeze

  attributes do
    attribute :id, Types::Int
    attribute :email, Types::String.constrained(format: EMAIL_FORMAT)
    attribute :created_at, Types::Time
    attribute :updated_at, Types::Time
  end
end
