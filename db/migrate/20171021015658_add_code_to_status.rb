class AddCodeToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :code, :integer
  end
end
