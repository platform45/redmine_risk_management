class AddRecoveryPlanReferenceToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :recovery_plan_reference, :text
    add_column :risks, :recovery_plan_issue_id,  :integer
  end
end
