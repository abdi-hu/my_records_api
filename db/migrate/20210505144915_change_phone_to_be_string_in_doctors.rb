class ChangePhoneToBeStringInDoctors < ActiveRecord::Migration[6.1]
  def change
    change_column :doctors, :phone, :string
  end
end
