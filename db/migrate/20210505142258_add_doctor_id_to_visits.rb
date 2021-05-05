class AddDoctorIdToVisits < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :doctor_id, :integer
  end
end
