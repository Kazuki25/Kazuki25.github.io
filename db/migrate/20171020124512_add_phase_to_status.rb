class AddPhaseToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :phase, :string
  end
end
