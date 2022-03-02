class ChangeCustomerteasToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    rename_table :customer_teas, :subscriptions
  end
end
