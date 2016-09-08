class AddIncomeStatementToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :income_statement, :text
  end
end
