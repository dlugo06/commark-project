json.extract! sales_summary, :id, :tasters, :sales_volume, :date, :created_at, :updated_at
json.url sales_summary_url(sales_summary, format: :json)
