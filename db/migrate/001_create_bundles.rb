Sequel.migration do
  up do
    create_table :bundles do
      primary_key :id
      String :name, null: false, unique: true
      Boolean :locked
      Integer :locked_by
    end
  end

  down do
    drop_table :bundles
  end
end
