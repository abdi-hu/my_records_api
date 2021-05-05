class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.date :appoint_date
      t.time :appoint_time
      t.text :visit_summary

      t.timestamps
    end
  end
end
