class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer "id_movie"
      t.integer "id_actor"
      t.string "character_name"
      t.timestamps
    end
  end
end
