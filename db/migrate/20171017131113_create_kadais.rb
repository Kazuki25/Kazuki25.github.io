class CreateKadais < ActiveRecord::Migration
  def change
    create_table :kadais do |t|
      t.string :status
      t.date :vote_date
      t.string :vote_person
      t.string :category
      t.string :subject
      t.string :level
      t.string :do_person
      t.string :goal
      t.date :due_date
      t.float :plan_hour
      t.float :actual_hour
      t.date :end_date

      t.timestamps null: false
    end
  end
end
