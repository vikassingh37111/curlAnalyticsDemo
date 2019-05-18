class CreateDatapoints < ActiveRecord::Migration[5.1]
  def change
    create_table :datapoints do |t|
      t.integer :value
      t.timestamp :server_dispatch_time
      t.references :graph, foreign_key: true

      t.timestamps
    end
  end
end
