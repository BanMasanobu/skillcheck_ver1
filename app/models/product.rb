# frozen_string_literal: true

class Product < ApplicationRecord
  scope :new_first, -> { order(created_at: :desc) }
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations
  has_many :variants, dependent: :destroy
end
