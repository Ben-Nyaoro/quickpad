class AccountingEntry < ApplicationRecord
	STATUSES = %w[pending approved rejected]
	BOOKS = ["General Journal", "Cash Receipts"]

	validates :date_prepared, presence: true
	validates :particular, presence: true
	validates :status, presence: true, inclusion: { in: STATUSES }
	validates :book, presence: true, inclusion: { in: BOOKS }

	has_many :journal_entries
end
