class AddRiskOwnerToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :owner_id, :integer
  end
end
