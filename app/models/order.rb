# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :teddy_bear_orders
  has_many :teddy_bears, through: :teddy_bear_orders

  validates :subtotal, :taxes, :total, presence: true
  validates :subtotal, :taxes, :total, numericality: { only_integer: true }
end
