class RemovePlanhourAndActualhourFromKadais < ActiveRecord::Migration
  def change
    remove_column :kadais, :plan_hour, :float
    remove_column :kadais, :actual_hour, :float
  end
end
