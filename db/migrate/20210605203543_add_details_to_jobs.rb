class AddDetailsToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :details, :string
  end
end
