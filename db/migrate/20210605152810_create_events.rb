class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.string :notes
      t.string :location
      t.boolean :notify

      t.timestamps
    end
  end
end
