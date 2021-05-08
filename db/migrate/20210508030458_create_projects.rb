class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.datetime :started_at
      t.datetime :finished_at
      t.string :state

      t.timestamps
    end
  end
end
