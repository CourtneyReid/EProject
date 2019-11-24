# frozen_string_literal: true

class TeddyBear < ApplicationRecord
  belongs_to :size
  belongs_to :status

  validates :size, :status, presence: true, allow_blank: false
end
