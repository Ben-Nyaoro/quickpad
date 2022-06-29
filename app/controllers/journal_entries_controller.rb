class JournalEntriesController < ApplicationController
  def new
		@journal_entry = JournalEntry.new
		#@accounting_codes = AccountingCode.all
		#@accounting_entries = AccountingEntry.all
  end

  def create
		@journal_entry = JournalEntry.new(journal_entry_params)
		@accounting_entry = AccountingEntry.find(params[:accounting_entry_id])
		@journal_entry.accounting_entry = @accounting_entry

		if @journal_entry.save!
			redirect_to @accounting_entry
		else
			render "accounting_entries/show"
		end
  end

	def destroy
		@journal_entry = JournalEntry.find(params[:id])
		@journal_entry.destroy
		redirect_to accounting_entry_path(@journal_entry.accounting_entry)
	end

	private

	def journal_entry_params
		params.require(:journal_entry).permit( :accounting_code_id, :accounting_entry_id, :post_type, :amount )
	end
end
