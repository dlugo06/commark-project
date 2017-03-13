class AddWineryToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :wineries, :user, foreign_key: true
  end
end
