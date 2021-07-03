class AddIndexToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :index, :integer, default: 0
  end
end
