# frozen_string_literal: true

class TeddyBearOrder < ApplicationRecord
  belongs_to :teddy_bear
  belongs_to :order

  validates :status, presence: true, allow_blank: false
  validates :cost, :quantity, numericality: { only_integer: true }
end
