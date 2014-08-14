class ModifyCommentsTable < ActiveRecord::Migration
  def change
    change_table(:comments) do |t|
      t.remove :name
      t.remove :email
      t.integer :user_id
    end
  end
end