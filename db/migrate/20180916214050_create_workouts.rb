class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.text :description
      t.integer :duration
      t.datetime :date
      t.string :image_url_1
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
