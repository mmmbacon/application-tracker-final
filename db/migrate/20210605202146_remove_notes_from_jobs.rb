class RemoveNotesFromJobs < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :notes, :string
  end
end
