class JournalEntriesController < ApplicationController
  def index
  end

  def new
		@journal_entry = JournalEntry.new
		@accounting_codes = AccountingCode.all
  end

  def create
		@journal_entry = JournalEntry.new(journal_entry_params)
		if @journal_entry.save
			redirect_to @journal_entry
		else
			render 'new'
		end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

	private

	def journal_entry_params
		params.require(:journal_entry).permit( :date_prepared, :date_posted, :particular, :status, :book, :ref_number)
	end
end
