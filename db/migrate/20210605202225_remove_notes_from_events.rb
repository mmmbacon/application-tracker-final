class RemoveNotesFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :notes, :string
  end
end
