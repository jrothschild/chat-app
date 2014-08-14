class RemoveUlrId < ActiveRecord::Migration
  def change
    change_table(:comments) do |t|
      t.remove :url_id
      t.text :url
    end
  end
end
