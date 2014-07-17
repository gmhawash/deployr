Sequel.migration do
  up do
    create_table :repos do
      primary_key :id
      Integer :bundle_id, null: false
      String :name, null: false
      String :repo
    end
  end

  down do
    drop_table :repos
  end
end
