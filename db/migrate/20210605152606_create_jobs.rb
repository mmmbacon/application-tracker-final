class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :description
      t.string :notes
      t.string :status
      t.integer :salary
      t.string :url
      t.string :location

      t.timestamps
    end
  end
end
