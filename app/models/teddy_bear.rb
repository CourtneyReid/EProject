# frozen_string_literal: true

class TeddyBear < ApplicationRecord
  belongs_to :status
  belongs_to :colour

  has_many :teddy_bear_orders
  has_many :orders, through: :teddy_bear_orders
  # validates :status, presence: true, allow_blank: false
end
