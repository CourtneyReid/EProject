# frozen_string_literal: true

class Order < ApplicationRecord
  validates :subtotal, :taxes, :total, presence: true
  validates :subtotal, :taxes, :total, numericality: { only_integer: true }
end
