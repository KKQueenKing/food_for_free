class CreateNoShows < ActiveRecord::Migration[5.2]
  def change
    create_table :no_shows do |t|
      t.references :claim, foreign_key: true

      t.timestamps
    end
  end
end
