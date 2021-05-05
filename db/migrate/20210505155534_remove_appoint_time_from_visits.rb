class RemoveAppointTimeFromVisits < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :appoint_time, :time
  end
end
