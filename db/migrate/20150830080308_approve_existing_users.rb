class ApproveExistingUsers < ActiveRecord::Migration
  def change
    User.update_all(approved: true)
  end
end
