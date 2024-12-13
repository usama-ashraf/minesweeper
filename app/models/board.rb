class Board < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validates :name, presence: true
  validates :width, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :height, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :mines, presence: true, numericality: { greater_than: 0, only_integer: true }
end