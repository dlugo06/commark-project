class AddWineriesToSale < ActiveRecord::Migration[5.0]
  def change
    add_reference :sales_summaries, :winery, foreign_key: true
  end
end
