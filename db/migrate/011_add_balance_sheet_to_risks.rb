class AddBalanceSheetToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :balance_sheet, :text
  end
end
