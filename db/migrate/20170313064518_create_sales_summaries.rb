class CreateSalesSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_summaries do |t|
      t.integer :tasters
      t.integer :sales_volume
      t.date :date

      t.timestamps
    end
  end
end
