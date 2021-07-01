class RemoveFieldsFromJobs < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :resume_url, :string
    remove_column :jobs, :coverletter_url, :string
    remove_column :jobs, :extra_url, :string
  end
end
