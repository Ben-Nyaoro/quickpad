class JournalEntry < ApplicationRecord

	POST_TYPES = %w["DR", "CR"]
  belongs_to :accounting_code
  belongs_to :accounting_entry

	validates :amount, presence: true, numerical: true
	validates :post_type, presence: true, inclusion: { in: POST_TYPES }
end
