class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.integer :owner_id
      t.date :start_date
      t.date :end_date
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
