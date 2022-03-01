class RenameStatusToActive < ActiveRecord::Migration[5.2]
  def change
    rename_column :customer_teas, :status, :active
  end
end
