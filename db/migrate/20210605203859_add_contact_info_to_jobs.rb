class AddContactInfoToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :contact_name, :string
    add_column :jobs, :contact_email, :string
    add_column :jobs, :contact_phone, :string
    add_column :jobs, :contact_socialmedia, :string
  end
end
