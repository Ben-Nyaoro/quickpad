class AccountingCode < ApplicationRecord
		CATEGORIES  = [
		'Assets',
		'Liabilities',
		'Equity',
		'Revenues',
		'Expenses'
  ]

	STATUS = [
		'Active',
		'Inactive'
	]

  validates :account, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
	validates :status, presence: true, inclusion: { in: STATUS }

  def to_s
    "#{code} - #{name}"
  end
end
