class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :unit_price, presence: true
  validates :unit_price, numericality: true

  belongs_to :merchant
  has_many :invoice_items
  has_many :invoices, :through => :invoice_items

  # def self.most_revenue(quantity = 1)
  #   puts "Hello World!"
  # end
end
