class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true
      t.references :objective, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
