# frozen_string_literal: true

class TeddyBear < ApplicationRecord
  belongs_to :size
  belongs_to :status
  belongs_to :colour
  has_many :orders, through: :teddybearorders

  validates :size, :status, presence: true, allow_blank: false
end
