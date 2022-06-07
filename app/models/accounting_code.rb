class AccountingCode < ApplicationRecord
CATEGORIES  = [
	"Cash and cash equivalents",
	"Current assets",
	"Fixed assets",
	"Non-current assets",
	"Current liabilities",
	"Non-current liabilities",
	"Owner's equity",
	"Income",
	"Cost of sales",
	"Expenses",
	"Other income",
	"Other expense"
		]

DETAIL_CATEGORIES = [
"Accrued holiday payable",
"Accrued liabilities",
"Accrued non-current liabilities",
"Accumulated depreciation on property, plant and equipment",
"Advertising/Promotional",
"Allowance for bad debts",
"Amortisation expense",
"Assets available for sale",
"Assets held for sale",
"Bad debts",
"Bank charges",
"Cash and cash equivalents",
"Commissions and fees",
"Cost of Sales",
"Current Tax Liability",
"Deferred tax",
"Dividend disbursed",
"Dividend income",
"Dividends payable",
"Dues and Subscriptions",
"Equipment rental",
"Equity in earnings of subsidiaries",
"Goodwill",
"Income tax expense",
"Income tax payable",
"Insurance",
"Intangible Assets",
"Interest earned",
"Interest paid",
"Inventory",
"Land",
"Legal and professional fees",
"Liabilities related to assets held for sale",
"Long-term debt",
"Long-term investments",
"Loss on discontinued operations, net of tax",
"Loss on disposal of assets",
"Management compensation",
"Meals and entertainment",
"Office/General Administrative Expenses",
"Other comprehensive income",
"Other current assets",
"Other current liabilities",
"Other Expense",
"Other Miscellaneous Service Cost",
"Other operating income",
"Other selling expenses",
"Payroll Clearing",
"Payroll Expenses",
"Prepaid Expenses",
"Rent or Lease of Buildings",
"Repair and maintenance",
"Retained Earnings",
"Revenue - General",
"Sales - retail",
"Sales - wholesale",
"Sales of Product Income",
"Share capital",
"Shipping and delivery expense",
"Shipping, Freight and Delivery - COS",
"Supplies and materials",
"Supplies and materials - COS",
"Travel expenses - general and admin expenses",
"Travel expenses - selling expense",
"Unrealised loss on securities, net of tax",
"Utilities"
]

STATUS = [
	'Active',
	'Inactive',
	'Closed'
	]

  validates :account, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
	validates :detail_category, presence: true, inclusion: { in: DETAIL_CATEGORIES }
	validates :status, presence: true, inclusion: { in: STATUS }
  validates :balance, numericality: { greater_than_or_equal_to: 0 }

  def to_s
    "#{code} - #{name}"
  end
end
