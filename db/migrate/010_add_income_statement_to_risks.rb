# The AddControlsToRisk migration will add a controls text item to the risk
# model allowing the risk creator to spesify how to prevent the risk
class AddIncomeStatementToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :income_statement, :text
  end
end
