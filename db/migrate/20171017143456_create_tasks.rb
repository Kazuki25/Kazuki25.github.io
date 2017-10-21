class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :kadai, index: true, foreign_key: true
      t.string :status
      t.string :do_person
      t.string :task
      t.float :plan_hour
      t.date :due_date
      t.float :actual_hour
      t.date :do_date

      t.timestamps null: false
    end
  end
end
