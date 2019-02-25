Hanami::Model.migration do
  change do
    create_table :trips do
      primary_key :id

      column :name, String, null: false

      foreign_key :user_id, :users, on_delete: :cascade, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
