# frozen_string_literal: true

class TeddyBearOrder < ApplicationRecord
  belongs_to :teddybear
  belongs_to :status

  validates :teddybear, :status, presence: true, allow_blank: false
end
