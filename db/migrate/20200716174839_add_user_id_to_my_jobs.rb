class AddUserIdToMyJobs < ActiveRecord::Migration[6.0]
  def change
    add_reference :my_jobs, :user, null: false, foreign_key: true
  end
end
