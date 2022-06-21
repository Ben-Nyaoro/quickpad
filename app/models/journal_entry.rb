class JournalEntry < ApplicationRecord

	POST_TYPES = %w["DR", "CR"]
  belongs_to :accounting_code
  belongs_to :accounting_entry

	validates :amount, presence: true, numericality: { greater_than: 0 }, allow_blank: false, allow_nil: false, on: :create, on: :update
	validates :post_type, presence: true, inclusion: { in: POST_TYPES }
end
