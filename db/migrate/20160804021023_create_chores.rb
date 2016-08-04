class CreateChores < ActiveRecord::Migration[5.0]
  def change
    create_table :chores do |t|
      t.string :task
      t.text :description
      t.references :occupant, index: true, foreign_key: true
      t.timestamps
    end
  end
end
