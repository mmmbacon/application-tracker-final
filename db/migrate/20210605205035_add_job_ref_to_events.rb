class AddJobRefToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :job, null: false, foreign_key: true
  end
end
