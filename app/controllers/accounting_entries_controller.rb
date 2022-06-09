class AccountingEntriesController < ApplicationController
  def index
		@accounting_entries = AccountingEntry.all
  end

  def show
		@accounting_entry = AccountingEntry.find(params[:id])
  end

	def new
		@accounting_entry = AccountingEntry.new
	end

	def create
		@accounting_entry = AccountingEntry.new(accounting_entry_params)
		if @accounting_entry.save
			redirect_to @accounting_entry
		else
			render 'new'
		end
	end

private

	def accounting_entry_params
		params.require(:accounting_entry).permit( :date_prepared, :date_posted, :particular, :status, :book)
	end

end
