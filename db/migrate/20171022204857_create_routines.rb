class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :group
      t.integer :task_id
      t.string :do_person
      t.string :task
      t.float :plan_hour
      t.float :actual_hour
      t.date :do_date

      t.timestamps null: false
    end
  end
end
