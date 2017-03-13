class Winery < ApplicationRecord
  belongs_to :user
  has_many :sales_summaries
end
