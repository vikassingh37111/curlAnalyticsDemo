class CreateGraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :graphs do |t|
      t.integer :start
      t.integer :end
      t.integer :incr
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
