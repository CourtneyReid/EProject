# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :teddybears, through: :teddybearorders

  validates :subtotal, :taxes, :total, presence: true
  validates :subtotal, :taxes, :total, numericality: { only_integer: true }
end
