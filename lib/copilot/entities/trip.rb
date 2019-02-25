class Trip < Hanami::Entity
  attributes do
    attribute :id, Types::Int
    attribute :name, Types::String
    attribute :user_id, Types::Int
    attribute :created_at, Types::Time
    attribute :updated_at, Types::Time
  end
end
